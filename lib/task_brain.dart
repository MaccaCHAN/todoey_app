import 'package:flutter/material.dart';

class TaskBrain {

  String taskText;
  bool checkBoxState = false;

  TaskBrain({required this.taskText});

  void toggleCheckBoxState () {
    checkBoxState = !checkBoxState;
  }

}