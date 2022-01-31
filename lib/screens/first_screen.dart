import 'package:flutter/material.dart';
import 'package:todoey_app/components/task_list_view.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:todoey_app/task_brain.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/provider/data.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add, size: 35),
            onPressed: (){
              showModalBottomSheet(context: context,
                builder: (context) => SingleChildScrollView(
                    child: Container(
                    child: AddTaskScreen(
                      // callbackOnPressed: (String taskText) {
                      //   print(taskText);
                      //   Provider.of<TaskData>(context).changeTaskText(taskText);
                      //    },
                    ),
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
              )),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              ),),);
            }),
        backgroundColor: Colors.lightBlueAccent,
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 50.0, top: 100.0, right: 50.0, bottom: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Container(width: 90.0, height: 90.0,
            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Icon(Icons.format_list_bulleted_rounded,
                    size: 50.0, color: Colors.lightBlueAccent),),
            SizedBox(width: double.infinity, height: 20.0),
            Text('Todoey', style: TextStyle(fontSize: 60.0, color: Colors.white, fontWeight: FontWeight.bold)),
              Text('${Provider.of<TaskData>(context).taskCount} Tasks', style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold))
          ],),
        ),
        Expanded(child:
        Container(
            width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0),
              child: TaskListView(),
            )

        ))



      ],),
    );
  }
}


