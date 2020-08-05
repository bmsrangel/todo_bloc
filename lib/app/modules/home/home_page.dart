import 'package:flutter/material.dart';

import 'models/task_model.dart';
import 'widgets/project_card/project_card_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Color> colors = [
    Colors.blue,
    Colors.deepOrange,
    Colors.red,
    Colors.green,
    Colors.deepPurple
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 50),
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3A393A),
              Color(0xFF0E0D0E),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 220,
              alignment: Alignment.center,
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, index) => SizedBox(width: 20.0),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      this.selectedIndex = index;
                    });
                  },
                  child: ProjectCardWidget(
                    projectName: "Teste $index",
                    taskList: [
                      TaskModel(
                          id: 1,
                          description: "Tarefa 1",
                          isCompleted: index == 1 ? true : false),
                      TaskModel(
                          id: 2, description: "Tarefa 2", isCompleted: true),
                      TaskModel(id: 3, description: "Tarefa 3"),
                      TaskModel(id: 4, description: "Tarefa 4"),
                    ],
                    backgroundColor: this.colors[index],
                    isSelected: index == this.selectedIndex,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
