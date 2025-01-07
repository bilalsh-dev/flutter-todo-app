import 'package:flutter/material.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List todos = [
    ["Create a todo app", true],
    ["Do exercise", false]
  ];

  void checkboxChanged(bool? value, int index) {
    setState(() {
      todos[index][1] = !todos[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      todos.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow[400],
          title: const Center(child: Text("To Do")),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: createNewTask,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: todos[index][0],
              taskCompleted: todos[index][1],
              onChanged: (value) => checkboxChanged(value, index),
            );
          },
        ));
  }
}
