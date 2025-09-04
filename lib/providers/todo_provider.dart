import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    if (title.isEmpty) return;
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void toggleDone(int index) {
    _todos[index].isDone = !_todos[index].isDone;
    notifyListeners();
  }

  void remove(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
