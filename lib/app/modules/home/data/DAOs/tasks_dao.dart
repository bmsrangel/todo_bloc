import 'package:moor_flutter/moor_flutter.dart';
import 'package:todo_bloc/app/modules/home/data/local_database.dart';

import '../interfaces/database_interface.dart';
import '../tables/tasks_table.dart';

part 'tasks_dao.g.dart';

@UseDao(tables: [Tasks])
class TasksDao extends DatabaseAccessor<LocalDatabase>
    with _$TasksDaoMixin
    implements IDatabase {
  TasksDao(LocalDatabase attachedDatabase) : super(attachedDatabase);

  @override
  Future<int> deleteData(data) =>
      (delete(tasks)..where((tbl) => tbl.id.equals(data.id))).go();

  @override
  Stream<List<Task>> getAllData() => select(tasks).watch();

  @override
  Future<Task> getData(data) =>
      (select(tasks)..where((tbl) => tbl.id.equals(data.id))).getSingle();

  @override
  Future<int> insertData(data) => into(tasks).insert(TasksCompanion(
      id: data.id,
      description: data.description,
      isCompleted: data.isCompleted,
      isSync: data.isSync));

  @override
  Future<int> updateData(data) =>
      (update(tasks)..where((tbl) => tbl.id.equals(data.id))).write(
          TasksCompanion(
              id: data.id,
              description: data.description,
              isCompleted: data.isCompleted,
              isSync: data.isSync));
}
