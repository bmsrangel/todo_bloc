import 'package:moor_flutter/moor_flutter.dart';

import '../local_database.dart';
import '../tables/projects_table.dart';

part 'projects_dao.g.dart';

@UseDao(tables: [Projects])
class ProjectsDao extends DatabaseAccessor<LocalDatabase>
    with _$ProjectsDaoMixin {
  ProjectsDao(LocalDatabase attachedDatabase) : super(attachedDatabase);

  Future<int> deleteProject(project) =>
      (delete(projects)..where((tbl) => tbl.id.equals(project.id))).go();

  Stream<List<Project>> getAllProjects() => select(projects).watch();

  Future<Project> getProject(project) =>
      (select(projects)..where((tbl) => tbl.id.equals(project.id))).getSingle();

  Future<int> insertProject(project) => into(projects).insert(ProjectsCompanion(
      id: project.id, name: project.name, isSync: project.isSync));

  Future<int> updateProject(project) =>
      (update(projects)..where((tbl) => tbl.id.equals(project.id))).write(
          ProjectsCompanion(
              id: project.id, name: project.name, isSync: project.isSync));
}
