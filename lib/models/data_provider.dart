import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';

class Data extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _tasks = [
    Task(name: "Add your todo items. Long press any item for delete.")
  ];

  UnmodifiableListView<Task>? get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
