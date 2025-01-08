import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List todosList = [];

  // reference the todos box
  final _myBox = Hive.box('todos-box');

  void createInitialData() {
    todosList = [
      ["Create a todo app", true],
      ["Do exercise", false],
      ["8 hours sleep", false],
      ["Meditate", false],
      ["Read Book", false],
    ];
  }

  void loadData() {
    todosList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", todosList);
  }
}
