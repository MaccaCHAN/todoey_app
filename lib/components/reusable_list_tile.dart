import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/provider/data.dart';

class ReusableListTile extends StatelessWidget {

  final String text;
  final bool isChecked;
  final void Function(bool?) toggleCheckboxState;
  final void Function() longPressCallback;

  ReusableListTile({required this.text, required this.isChecked, required this.toggleCheckboxState,
  required this.longPressCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback ,
      title: Text(text, style: TextStyle (decoration: isChecked == true ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
          onChanged: toggleCheckboxState, value: isChecked)
    );
  }
}


// class TaskCheckbox extends StatelessWidget {
//
//   final bool checkBoxState;
//   final void Function(bool?) toggleCheckboxState;
//
//   TaskCheckbox({required this.checkBoxState,required this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(value: checkBoxState,
//         onChanged: toggleCheckboxState);
//   }
// }

