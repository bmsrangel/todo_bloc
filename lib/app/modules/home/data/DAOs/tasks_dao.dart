import 'package:moor_flutter/moor_flutter.dart';

import '../local_database.dart';
import '../tables/tasks_table.dart';

part 'tasks_dao.g.dart';

@UseDao(tables: [Tasks])
class TasksDao extends DatabaseAccessor<LocalDatabase>
    with _$TasksDaoMixin{
  TasksDao(LocalDatabase attachedDatabase) : super(attachedDatabase);

  Future<int> deleteTask(task) =>
      (delete(tasks)..where((tbl) => tbl.id.equals(task.id))).go();

  Stream<List<Task>> getAllTasks() => select(tasks).watch();

  Future<Task> getTask(task) =>
      (select(tasks)..where((tbl) => tbl.id.equals(task.id))).getSingle();

  Future<int> insertTask(task) => into(tasks).insert(TasksCompanion(
      id: task.id,
      description: task.description,
      isCompleted: task.isCompleted,
      isSync: task.isSync));

  Future<int> updateData(task) =>
      (update(tasks)..where((tbl) => tbl.id.equals(task.id))).write(
          TasksCompanion(
              id: task.id,
              description: task.description,
              isCompleted: task.isCompleted,
              isSync: task.isSync));
}
