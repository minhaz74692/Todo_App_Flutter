//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
    required this.longPressCallBack,
  });

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;
  final Function() longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
