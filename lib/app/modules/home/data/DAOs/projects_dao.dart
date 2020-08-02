import 'package:moor_flutter/moor_flutter.dart';

import '../interfaces/database_interface.dart';
import '../local_database.dart';
import '../tables/projects_table.dart';

part 'projects_dao.g.dart';

@UseDao(tables: [Projects])
class ProjectsDao extends DatabaseAccessor<LocalDatabase>
    with _$ProjectsDaoMixin
    implements IDatabase {
  ProjectsDao(LocalDatabase attachedDatabase) : super(attachedDatabase);

  @override
  Future<int> deleteData(data) =>
      (delete(projects)..where((tbl) => tbl.id.equals(data.id))).go();

  @override
  Stream<List<Project>> getAllData() => select(projects).watch();

  @override
  Future<Project> getData(data) =>
      (select(projects)..where((tbl) => tbl.id.equals(data.id))).getSingle();

  @override
  Future<int> insertData(data) => into(projects).insert(
      ProjectsCompanion(id: data.id, name: data.name, isSync: data.isSync));

  @override
  Future<int> updateData(data) =>
      (update(projects)..where((tbl) => tbl.id.equals(data.id))).write(
          ProjectsCompanion(id: data.id, name: data.name, isSync: data.isSync));
}
