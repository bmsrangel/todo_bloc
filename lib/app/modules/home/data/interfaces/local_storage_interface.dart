import '../../models/project_model.dart';
import '../../models/task_model.dart';

abstract class ILocalStorage {
  getAllTasks();
  getAllProjects();
  
  insertTask(TaskModel taskModel);
  updateTask(TaskModel taskModel);
  deleteTask(TaskModel taskModel);
  insertProject(ProjectModel projectModel);
  updateProject(ProjectModel projectModel);
  deleteProject(ProjectModel projectModel);
}