class TaskModel {
  int id;
  String description;
  bool isCompleted;

  TaskModel({this.id, this.description, this.isCompleted = false});

  factory TaskModel.fromMap(Map value) => TaskModel(
        id: value["id"],
        description: value["description"],
        isCompleted: value["is_completed"],
      );

  factory TaskModel.fromHasuraMap(Map value) => TaskModel(
        id: value["id_sqlite"],
        description: value["description"],
        isCompleted: value["is_completed"],
      );

  Map toMap() => {
        "id": this.id,
        "description": this.description,
        "is_completed": this.isCompleted,
      };
}
