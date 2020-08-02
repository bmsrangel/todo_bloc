import 'package:moor_flutter/moor_flutter.dart';

import 'tables/projects_table.dart';
import 'tables/tasks_table.dart';

part 'local_database.g.dart';

@UseMoor(tables: [Tasks, Projects])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'local_database.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
}
