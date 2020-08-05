import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/task_model.dart';
import 'project_card_bloc.dart';

class ProjectCardWidget extends StatelessWidget {
  final String projectName;
  final List<TaskModel> taskList;
  final Color backgroundColor;
  final bool isSelected;
  final ProjectCardBloc controller = Modular.get<ProjectCardBloc>();

  ProjectCardWidget(
      {Key key,
      this.projectName,
      this.taskList,
      this.backgroundColor = Colors.blue,
      this.isSelected = false})
      : super(key: key) {
    this.controller.init(this.taskList);
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textThemes = Theme.of(context).textTheme;

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: this.backgroundColor,
          boxShadow: this.isSelected
              ? [
                  BoxShadow(
                    color: this.backgroundColor.withOpacity(0.5),
                    spreadRadius: 3.0,
                    blurRadius: 10.0,
                    // offset: Offset(3.0, 3.0),
                  )
                ]
              : null),
      width: this.isSelected ? 170 : 140,
      height: this.isSelected ? 180 : 150,
      margin: EdgeInsets.symmetric(vertical: this.isSelected ? 20.0 : 35.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.projectName,
                style: textThemes.bodyText1,
              ),
              const SizedBox(height: 5.0),
              StreamBuilder(
                stream: this.controller.outStatusText,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Container();
                  } else {
                    return Text(snapshot.data);
                  }
                },
              )
            ],
          ),
          Positioned(
            top: 20.0,
            child: StreamBuilder<TaskModel>(
              stream: this.controller.outFirstIncompletedTask,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text("No pending tasks.");
                } else {
                  return Text(snapshot.data.description);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
