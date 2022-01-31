import 'package:flutter/material.dart';
import 'package:todoey_app/components/reusable_list_tile.dart';
import 'package:todoey_app/task_brain.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/provider/data.dart';

class AddTaskScreen extends StatefulWidget {


  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String newTaskText;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newValue) {
              Provider.of<TaskData>(context, listen: false).changeTaskText(newValue);
            },
          ),
          SizedBox(height: 15.0),
          ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask();
                Navigator.pop(context);
                // print('onPressed at button text: $newTaskText');
                // widget.callbackOnPressed(newTaskText);
                }
              , child: Text('Add'),
            style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent))
        ],
      ),
    );
  }
}
