// dart format width=80
import 'package:drift/internal/versioned_schema.dart' as i0;
import 'package:drift/drift.dart' as i1;
import 'package:drift/drift.dart'; // ignore_for_file: type=lint,unused_import

// GENERATED BY drift_dev, DO NOT MODIFY.
final class Schema2 extends i0.VersionedSchema {
  Schema2({required super.database}) : super(version: 2);
  @override
  late final List<i1.DatabaseSchemaEntity> entities = [
    asset,
    assetLocal,
    assetRemote,
    coreType,
    core,
    coreExec,
    coreLib,
    coreTypeSelected,
    profileGroup,
    profile,
    profileLocal,
    profileRemote,
    profileGroupLocal,
    profileGroupRemote,
  ];
  late final Shape0 asset = Shape0(
      source: i0.VersionedTable(
        entityName: 'asset',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [],
        columns: [
          _column_0,
          _column_1,
          _column_2,
          _column_3,
          _column_4,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape1 assetLocal = Shape1(
      source: i0.VersionedTable(
        entityName: 'asset_local',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(asset_id)',
        ],
        columns: [
          _column_5,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape2 assetRemote = Shape2(
      source: i0.VersionedTable(
        entityName: 'asset_remote',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(asset_id)',
        ],
        columns: [
          _column_5,
          _column_6,
          _column_7,
          _column_8,
          _column_9,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape3 coreType = Shape3(
      source: i0.VersionedTable(
        entityName: 'core_type',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [],
        columns: [
          _column_0,
          _column_10,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape4 core = Shape4(
      source: i0.VersionedTable(
        entityName: 'core',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [],
        columns: [
          _column_0,
          _column_11,
          _column_12,
          _column_4,
          _column_13,
          _column_14,
          _column_15,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape5 coreExec = Shape5(
      source: i0.VersionedTable(
        entityName: 'core_exec',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(core_id)',
        ],
        columns: [
          _column_16,
          _column_17,
          _column_5,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape6 coreLib = Shape6(
      source: i0.VersionedTable(
        entityName: 'core_lib',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(core_id)',
        ],
        columns: [
          _column_16,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape7 coreTypeSelected = Shape7(
      source: i0.VersionedTable(
        entityName: 'core_type_selected',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(core_type_id)',
        ],
        columns: [
          _column_11,
          _column_16,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape8 profileGroup = Shape8(
      source: i0.VersionedTable(
        entityName: 'profile_group',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [],
        columns: [
          _column_0,
          _column_18,
          _column_4,
          _column_2,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape9 profile = Shape9(
      source: i0.VersionedTable(
        entityName: 'profile',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [],
        columns: [
          _column_0,
          _column_18,
          _column_11,
          _column_19,
          _column_4,
          _column_2,
          _column_20,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape10 profileLocal = Shape10(
      source: i0.VersionedTable(
        entityName: 'profile_local',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(profile_id)',
        ],
        columns: [
          _column_21,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape11 profileRemote = Shape11(
      source: i0.VersionedTable(
        entityName: 'profile_remote',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(profile_id)',
        ],
        columns: [
          _column_21,
          _column_6,
          _column_8,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape12 profileGroupLocal = Shape12(
      source: i0.VersionedTable(
        entityName: 'profile_group_local',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(profile_group_id)',
        ],
        columns: [
          _column_22,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape13 profileGroupRemote = Shape13(
      source: i0.VersionedTable(
        entityName: 'profile_group_remote',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(profile_group_id)',
        ],
        columns: [
          _column_22,
          _column_6,
          _column_23,
          _column_8,
        ],
        attachedDatabase: database,
      ),
      alias: null);
}

class Shape0 extends i0.VersionedTable {
  Shape0({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get id =>
      columnsByName['id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get name =>
      columnsByName['name']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<int> get type =>
      columnsByName['type']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get path =>
      columnsByName['path']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<DateTime> get updatedAt =>
      columnsByName['updated_at']! as i1.GeneratedColumn<DateTime>;
}

i1.GeneratedColumn<int> _column_0(String aliasedName) =>
    i1.GeneratedColumn<int>('id', aliasedName, false,
        hasAutoIncrement: true,
        type: i1.DriftSqlType.int,
        defaultConstraints:
            i1.GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
i1.GeneratedColumn<String> _column_1(String aliasedName) =>
    i1.GeneratedColumn<String>('name', aliasedName, true,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<int> _column_2(String aliasedName) =>
    i1.GeneratedColumn<int>('type', aliasedName, false,
        type: i1.DriftSqlType.int);
i1.GeneratedColumn<String> _column_3(String aliasedName) =>
    i1.GeneratedColumn<String>('path', aliasedName, false,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<DateTime> _column_4(String aliasedName) =>
    i1.GeneratedColumn<DateTime>('updated_at', aliasedName, false,
        type: i1.DriftSqlType.dateTime);

class Shape1 extends i0.VersionedTable {
  Shape1({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get assetId =>
      columnsByName['asset_id']! as i1.GeneratedColumn<int>;
}

i1.GeneratedColumn<int> _column_5(String aliasedName) =>
    i1.GeneratedColumn<int>('asset_id', aliasedName, false,
        type: i1.DriftSqlType.int,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'REFERENCES asset (id) ON DELETE CASCADE'));

class Shape2 extends i0.VersionedTable {
  Shape2({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get assetId =>
      columnsByName['asset_id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get url =>
      columnsByName['url']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get meta =>
      columnsByName['meta']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<int> get autoUpdateInterval =>
      columnsByName['auto_update_interval']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get downloadedFilePath =>
      columnsByName['downloaded_file_path']! as i1.GeneratedColumn<String>;
}

i1.GeneratedColumn<String> _column_6(String aliasedName) =>
    i1.GeneratedColumn<String>('url', aliasedName, false,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<String> _column_7(String aliasedName) =>
    i1.GeneratedColumn<String>('meta', aliasedName, false,
        type: i1.DriftSqlType.string,
        defaultValue: const CustomExpression('\'{}\''));
i1.GeneratedColumn<int> _column_8(String aliasedName) =>
    i1.GeneratedColumn<int>('auto_update_interval', aliasedName, false,
        type: i1.DriftSqlType.int);
i1.GeneratedColumn<String> _column_9(String aliasedName) =>
    i1.GeneratedColumn<String>('downloaded_file_path', aliasedName, true,
        type: i1.DriftSqlType.string);

class Shape3 extends i0.VersionedTable {
  Shape3({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get id =>
      columnsByName['id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get name =>
      columnsByName['name']! as i1.GeneratedColumn<String>;
}

i1.GeneratedColumn<String> _column_10(String aliasedName) =>
    i1.GeneratedColumn<String>('name', aliasedName, false,
        type: i1.DriftSqlType.string,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways('UNIQUE'));

class Shape4 extends i0.VersionedTable {
  Shape4({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get id =>
      columnsByName['id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<int> get coreTypeId =>
      columnsByName['core_type_id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get version =>
      columnsByName['version']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<DateTime> get updatedAt =>
      columnsByName['updated_at']! as i1.GeneratedColumn<DateTime>;
  i1.GeneratedColumn<bool> get isExec =>
      columnsByName['is_exec']! as i1.GeneratedColumn<bool>;
  i1.GeneratedColumn<String> get workingDir =>
      columnsByName['working_dir']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get envs =>
      columnsByName['envs']! as i1.GeneratedColumn<String>;
}

i1.GeneratedColumn<int> _column_11(String aliasedName) =>
    i1.GeneratedColumn<int>('core_type_id', aliasedName, false,
        type: i1.DriftSqlType.int,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'REFERENCES core_type (id) ON DELETE CASCADE'));
i1.GeneratedColumn<String> _column_12(String aliasedName) =>
    i1.GeneratedColumn<String>('version', aliasedName, true,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<bool> _column_13(String aliasedName) =>
    i1.GeneratedColumn<bool>('is_exec', aliasedName, false,
        type: i1.DriftSqlType.bool,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'CHECK ("is_exec" IN (0, 1))'),
        defaultValue: const CustomExpression('1'));
i1.GeneratedColumn<String> _column_14(String aliasedName) =>
    i1.GeneratedColumn<String>('working_dir', aliasedName, true,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<String> _column_15(String aliasedName) =>
    i1.GeneratedColumn<String>('envs', aliasedName, false,
        type: i1.DriftSqlType.string,
        defaultValue: const CustomExpression('\'{}\''));

class Shape5 extends i0.VersionedTable {
  Shape5({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get coreId =>
      columnsByName['core_id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get args =>
      columnsByName['args']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<int> get assetId =>
      columnsByName['asset_id']! as i1.GeneratedColumn<int>;
}

i1.GeneratedColumn<int> _column_16(String aliasedName) =>
    i1.GeneratedColumn<int>('core_id', aliasedName, false,
        type: i1.DriftSqlType.int,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'REFERENCES core (id) ON DELETE CASCADE'));
i1.GeneratedColumn<String> _column_17(String aliasedName) =>
    i1.GeneratedColumn<String>('args', aliasedName, false,
        type: i1.DriftSqlType.string,
        defaultValue: const CustomExpression('\'[]\''));

class Shape6 extends i0.VersionedTable {
  Shape6({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get coreId =>
      columnsByName['core_id']! as i1.GeneratedColumn<int>;
}

class Shape7 extends i0.VersionedTable {
  Shape7({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get coreTypeId =>
      columnsByName['core_type_id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<int> get coreId =>
      columnsByName['core_id']! as i1.GeneratedColumn<int>;
}

class Shape8 extends i0.VersionedTable {
  Shape8({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get id =>
      columnsByName['id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get name =>
      columnsByName['name']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<DateTime> get updatedAt =>
      columnsByName['updated_at']! as i1.GeneratedColumn<DateTime>;
  i1.GeneratedColumn<int> get type =>
      columnsByName['type']! as i1.GeneratedColumn<int>;
}

i1.GeneratedColumn<String> _column_18(String aliasedName) =>
    i1.GeneratedColumn<String>('name', aliasedName, false,
        type: i1.DriftSqlType.string);

class Shape9 extends i0.VersionedTable {
  Shape9({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get id =>
      columnsByName['id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get name =>
      columnsByName['name']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<int> get coreTypeId =>
      columnsByName['core_type_id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get coreCfg =>
      columnsByName['core_cfg']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<DateTime> get updatedAt =>
      columnsByName['updated_at']! as i1.GeneratedColumn<DateTime>;
  i1.GeneratedColumn<int> get type =>
      columnsByName['type']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<int> get profileGroupId =>
      columnsByName['profile_group_id']! as i1.GeneratedColumn<int>;
}

i1.GeneratedColumn<String> _column_19(String aliasedName) =>
    i1.GeneratedColumn<String>('core_cfg', aliasedName, false,
        type: i1.DriftSqlType.string,
        defaultValue: const CustomExpression('\'{}\''));
i1.GeneratedColumn<int> _column_20(String aliasedName) =>
    i1.GeneratedColumn<int>('profile_group_id', aliasedName, false,
        type: i1.DriftSqlType.int,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'REFERENCES profile_group (id)'),
        defaultValue: const CustomExpression('1'));

class Shape10 extends i0.VersionedTable {
  Shape10({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get profileId =>
      columnsByName['profile_id']! as i1.GeneratedColumn<int>;
}

i1.GeneratedColumn<int> _column_21(String aliasedName) =>
    i1.GeneratedColumn<int>('profile_id', aliasedName, false,
        type: i1.DriftSqlType.int,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'REFERENCES profile (id) ON DELETE CASCADE'));

class Shape11 extends i0.VersionedTable {
  Shape11({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get profileId =>
      columnsByName['profile_id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get url =>
      columnsByName['url']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<int> get autoUpdateInterval =>
      columnsByName['auto_update_interval']! as i1.GeneratedColumn<int>;
}

class Shape12 extends i0.VersionedTable {
  Shape12({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get profileGroupId =>
      columnsByName['profile_group_id']! as i1.GeneratedColumn<int>;
}

i1.GeneratedColumn<int> _column_22(String aliasedName) =>
    i1.GeneratedColumn<int>('profile_group_id', aliasedName, false,
        type: i1.DriftSqlType.int,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'REFERENCES profile_group (id) ON DELETE CASCADE'));

class Shape13 extends i0.VersionedTable {
  Shape13({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<int> get profileGroupId =>
      columnsByName['profile_group_id']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<String> get url =>
      columnsByName['url']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<int> get format =>
      columnsByName['format']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<int> get autoUpdateInterval =>
      columnsByName['auto_update_interval']! as i1.GeneratedColumn<int>;
}

i1.GeneratedColumn<int> _column_23(String aliasedName) =>
    i1.GeneratedColumn<int>('format', aliasedName, false,
        type: i1.DriftSqlType.int);
i0.MigrationStepWithVersion migrationSteps({
  required Future<void> Function(i1.Migrator m, Schema2 schema) from1To2,
}) {
  return (currentVersion, database) async {
    switch (currentVersion) {
      case 1:
        final schema = Schema2(database: database);
        final migrator = i1.Migrator(database, schema);
        await from1To2(migrator, schema);
        return 2;
      default:
        throw ArgumentError.value('Unknown migration from $currentVersion');
    }
  };
}

i1.OnUpgrade stepByStep({
  required Future<void> Function(i1.Migrator m, Schema2 schema) from1To2,
}) =>
    i0.VersionedSchema.stepByStepHelper(
        step: migrationSteps(
      from1To2: from1To2,
    ));
