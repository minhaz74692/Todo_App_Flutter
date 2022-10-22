import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [Task(name: "Item one")];

  int get taskCount {
    return tasks.length;
  }

  void addTask(newTask) {
    tasks.add(newTask);
    notifyListeners();
  }
}
