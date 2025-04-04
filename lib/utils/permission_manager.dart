import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';

class PermissionManager {
  Future<PermissionStatus> requestPermission(
      BuildContext context, Permission permission, String reason) async {
    return PermissionStatus.granted;
  }
}

class PermissionManagerAndroid extends PermissionManager {
  void _showPermissionDialog(BuildContext context, String reason) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text("Permission Required"),
        content: Text(reason),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              openAppSettings(); // Open the Android app's settings page
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text("Open Settings"),
          ),
        ],
      ),
    );
  }

  @override
  Future<PermissionStatus> requestPermission(
      BuildContext context, Permission permission, String reason) async {
    return await permission.onDeniedCallback(() {
      _showPermissionDialog(context, reason);
    }).onGrantedCallback(() {
      return;
    }).onPermanentlyDeniedCallback(() {
      _showPermissionDialog(context, reason);
    }).onRestrictedCallback(() {
      _showPermissionDialog(context, reason);
    }).onLimitedCallback(() {
      _showPermissionDialog(context, reason);
    }).onProvisionalCallback(() {
      _showPermissionDialog(context, reason);
    }).request();
  }
}

final permMan =
    Platform.isAndroid ? PermissionManagerAndroid() : PermissionManager();
