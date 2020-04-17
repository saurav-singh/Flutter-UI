import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      height: MediaQuery.of(context).size.height - 200,
      child: ListView(children: taskListBuilder()),
    );
  }

  List<Widget> taskListBuilder() {
    // Task, COlorId
    var tasks = [
      ["Develop A Work Plan", 2],
      ["Make Salad", 0],
      ["Group Meeting", 1],
      ["Cleaning", 1],
      ["Take Medicine", 0],
    ];

    List<Widget> taskList = List();

    for (int i = 0; i < tasks.length; i++) {
      taskList.add(taskTile(i, tasks[i]));
    }

    return taskList;
  }

  Widget taskTile(index, taskInfo) {
    var cardColors = [Color(0xFFFFC26C), Color(0xFFFF6C6C), Color(0xFF633CAE)];
    var cardSize = [140.0, 110.0, 80.0];
    var color = cardColors[taskInfo[1]];
    var task = taskInfo[0];
    var size = index > 1 ? cardSize[2] : cardSize[index];

    return Container(
      height: size,
      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
      padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            task,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
