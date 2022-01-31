import 'package:flutter/material.dart';
import 'package:todoey_app/components/reusable_list_tile.dart';
import 'package:todoey_app/task_brain.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/provider/data.dart';



class TaskListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.getTaskList[index];
            return ReusableListTile(text: task.taskText,
                isChecked: task.checkBoxState ,
                toggleCheckboxState: (checkboxState) {
              taskData.updateTask(task);
                  // Provider.of<TaskData>(context, listen: false).updateTask(Provider.of<TaskData>(context, listen: false).getTaskList[index]);
            },
              longPressCallback: () {taskData.deleteTask(task);},
            );
          },
          itemCount: Provider.of<TaskData>(context).getTaskList.length,
        );
      },
    );
  }
}
