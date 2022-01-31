import 'package:flutter/foundation.dart';
import 'package:todoey_app/task_brain.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  String? newTaskText;

  List<TaskBrain> _taskBrainList = [];

  void changeTaskText (String taskText) {
    newTaskText = taskText;
    print(newTaskText);
    notifyListeners();
  }

  UnmodifiableListView<TaskBrain> get getTaskList {
    return UnmodifiableListView(_taskBrainList);
  }

  int get taskCount {
    return _taskBrainList.length;
  }

  void addTask () {
    _taskBrainList.add(TaskBrain(taskText: newTaskText!));
    print(_taskBrainList);
    notifyListeners();
  }

  void updateTask (TaskBrain taskBrain) {
    taskBrain.toggleCheckBoxState();
    notifyListeners();
  }

  void deleteTask (TaskBrain taskBrain) {
    _taskBrainList.remove(taskBrain);
    notifyListeners();

  }



}