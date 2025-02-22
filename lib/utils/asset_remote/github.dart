import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:anyportal/utils/asset_remote/protocol.dart';
import 'package:drift/drift.dart';
import 'package:flutter_socks_proxy/socks_proxy.dart';
import 'package:path/path.dart' as p;

import '../../models/asset.dart';
import '../db.dart';
import '../extract.dart';
import '../global.dart';
import '../logger.dart';
import '../prefs.dart';

class AssetRemoteProtocolGithub implements AssetRemoteProtocol {
  final String url;
  final String protocol = "github";
  final String owner;
  final String repo;
  final String assetName;
  final String? subPath;

  AssetRemoteProtocolGithub({
    required this.url,
    required this.owner,
    required this.repo,
    required this.assetName,
    this.subPath,
  });

  static AssetRemoteProtocolGithub? fromUrl(String url) {
    final regex = RegExp(
      r'^github:\/\/([^\/]+)\/([^\/]+)\/([^\/]+)?(?:\/(.+))?$',
    );

    final match = regex.firstMatch(url);
    if (match != null) {
      return AssetRemoteProtocolGithub(
        url: url,
        owner: match.group(1)!,
        repo: match.group(2)!,
        assetName: match.group(3)!,
        subPath: match.group(4), // Nullable
      );
    }
    return null;
  }

  String? _newMeta;
  final serverAddress = prefs.getString('app.server.address')!;
  final socksPort = prefs.getInt('app.socks.port')!;

  Future<bool> isUpdated(
    TypedResult? oldAsset,
  ) async {
    final metaUrl = "https://api.github.com/repos/$owner/$repo/releases/latest";

    final client = createProxyHttpClient()
      ..findProxy = (url) => 'SOCKS5 $serverAddress:$socksPort';
    final request = await client.getUrl(Uri.parse(metaUrl));
    final response = await request.close();
    client.close();

    if (response.statusCode == 200) {
      _newMeta = await utf8.decodeStream(response);

      if (oldAsset == null) {
        return false;
      } else {
        final oldCreatedAt = (jsonDecode(oldAsset.read(db.assetRemote.meta)!)
            as Map<String, dynamic>)["created_at"];
        final newCreatedAt =
            (jsonDecode(_newMeta!) as Map<String, dynamic>)["created_at"];

        return oldCreatedAt == newCreatedAt;
      }
    } else {
      throw Exception(
          "${response.statusCode} when accessing $metaUrl. If using shared ip address/exceeding api limit consider add a github token");
    }
  }

  @override
  Future<void> update({
    TypedResult? oldAsset,
    int autoUpdateInterval = 0,
  }) async {
    if (await isUpdated(oldAsset)) {
      logger.d("isUpdated");
      return;
    } else {
      final assetList =
          (jsonDecode(_newMeta!) as Map<String, dynamic>)["assets"];
      String? downloadUrl;
      for (final asset in assetList) {
        final assetMap = asset as Map<String, dynamic>;
        if (assetMap["name"] == assetName) {
          downloadUrl = assetMap["browser_download_url"];
        }
      }
      if (downloadUrl == null) {
        throw Exception("asset not found");
      }

      final folder = global.applicationSupportDirectory;
      final file =
          File(p.join(folder.path, 'asset', 'github', owner, repo, assetName));
      String path = file.path;

      final client = createProxyHttpClient()
        ..findProxy = (url) => 'SOCKS5 $serverAddress:$socksPort';
      final request = await client.getUrl(Uri.parse(downloadUrl));
      final response = await request.close();
      await file.create(recursive: true);
      var sink = file.openWrite();
      await response.pipe(sink);
      sink.close();

      if (path.toLowerCase().endsWith(".zip")) {
        extractAsFolder(path);
        file.delete();
        path = path.substring(0, path.length - 4);
      }
      if (subPath != null) {
        final subPathList = subPath!.split('/');
        path = File(p.joinAll([path, ...subPathList])).path;
      }

      /// if everythings fine, record to db
      int assetId;
      await db.transaction(() async {
        if (oldAsset != null) {
          assetId = oldAsset.read(db.assetRemote.assetId)!;
          await db.into(db.asset).insertOnConflictUpdate(AssetCompanion(
                id: Value(oldAsset.read(db.assetRemote.assetId)!),
                type: const Value(AssetType.remote),
                path: Value(path),
                updatedAt: Value(DateTime.now()),
              ));
        } else {
          assetId =
              await db.into(db.asset).insertOnConflictUpdate(AssetCompanion(
                    type: const Value(AssetType.remote),
                    path: Value(path),
                    updatedAt: Value(DateTime.now()),
                  ));
        }
        await db
            .into(db.assetRemote)
            .insertOnConflictUpdate(AssetRemoteCompanion(
              assetId: Value(assetId),
              url: Value(url),
              meta: Value(_newMeta!),
              autoUpdateInterval: Value(autoUpdateInterval),
            ));
      });

      return;
    }
  }
}
