import 'package:flutter/material.dart';
import 'package:todoey_app/screens/first_screen.dart';
import 'screens/first_screen.dart';
import 'package:provider/provider.dart';
import 'provider/data.dart';

void main() {
  runApp(TodoeyApp());
}

class TodoeyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
        create: (context) => TaskData(),
        child:
    MaterialApp(home: FirstScreen()));

  }
}
