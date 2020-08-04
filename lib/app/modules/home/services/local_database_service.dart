import 'package:todo_bloc/app/modules/home/data/local_database.dart';

import '../data/interfaces/local_storage_interface.dart';
import '../models/project_model.dart';
import '../models/task_model.dart';

class LocalDatabaseService implements ILocalStorage {
  LocalDatabase _localDatabase;

  LocalDatabaseService(this._localDatabase);

  @override
  deleteProject(ProjectModel projectModel) {
    throw UnimplementedError();
  }

  @override
  deleteTask(TaskModel taskModel) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  getAllProjects() {
    // TODO: implement getAllProjects
    throw UnimplementedError();
  }

  @override
  getAllTasks() {
    // TODO: implement getAllTasks
    throw UnimplementedError();
  }

  @override
  insertProject(ProjectModel projectModel) {
    // TODO: implement insertProject
    throw UnimplementedError();
  }

  @override
  insertTask(TaskModel taskModel) {
    // TODO: implement insertTask
    throw UnimplementedError();
  }

  @override
  updateProject(ProjectModel projectModel) {
    // TODO: implement updateProject
    throw UnimplementedError();
  }

  @override
  updateTask(TaskModel taskModel) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }

}