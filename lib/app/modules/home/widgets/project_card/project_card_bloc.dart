import 'package:flutter_modular/flutter_modular.dart';
import 'package:rxdart/rxdart.dart';

import '../../models/task_model.dart';

class ProjectCardBloc extends Disposable {
  List<TaskModel> taskList;

  BehaviorSubject<String> _statusText$ = BehaviorSubject<String>();
  Stream<String> get outStatusText => this._statusText$.stream;

  BehaviorSubject<TaskModel> _firstIncompletedTask$ =
      BehaviorSubject<TaskModel>();
  Stream<TaskModel> get outFirstIncompletedTask =>
      this._firstIncompletedTask$.stream;

  void setAttributes(List<TaskModel> taskList) {
    this.taskList = taskList;
  }

  int calculateCompletedTasks() {
    int completedTasksTotal =
        this.taskList.where((element) => element.isCompleted).length;
    return completedTasksTotal;
  }

  void setStatusText(int completedTasksTotal) {
    String statusText =
        "$completedTasksTotal/${this.taskList.length} completed";
    this._statusText$.sink.add(statusText);
  }

  void setFirstIncompletedTask() {
    TaskModel firstIncompletedTask =
        this.taskList.firstWhere((element) => !element.isCompleted);
    this._firstIncompletedTask$.sink.add(firstIncompletedTask);
  }

  init(List<TaskModel> taskList) {
    this.setAttributes(taskList);
    int completedTasksTotal = this.calculateCompletedTasks();
    this.setStatusText(completedTasksTotal);
    this.setFirstIncompletedTask();
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    this._statusText$.close();
    this._firstIncompletedTask$.close();
  }
}
