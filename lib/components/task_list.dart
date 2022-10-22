//ignore_for_file: prefer_const_constructorss
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/task_tile.dart';
import 'package:todo_app/models/data_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});
  // final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: ((context, index) => TaskTile(
                isChecked: taskData.tasks![index].isDone,
                taskTitle: taskData.tasks![index].name,
                checkBoxCallBack: (checkBoxState) {
                  taskData.updateTask(taskData.tasks![index]);
                },
                longPressCallBack: () {
                  taskData.deleteTask(taskData.tasks![index]);
                },
              )),
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
