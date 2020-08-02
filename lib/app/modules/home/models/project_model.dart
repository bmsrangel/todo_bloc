class ProjectModel {
  int id;
  String name;

  ProjectModel({this.id, this.name});

  factory ProjectModel.fromMap(Map value) => ProjectModel(
        id: value["id"],
        name: value["name"],
      );

  factory ProjectModel.fromHasuraMap(Map value) => ProjectModel(
        id: value["id_sqlite"],
        name: value["name"],
      );

  Map toMap() => {
        "id": this.id,
        "name": this.name,
      };
}
