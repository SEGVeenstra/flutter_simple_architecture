import 'package:flutter/material.dart';
import 'package:flutter_simple_architecture/models/todo.dart';

/// TodoList holds the state of the Todo items.
class TodoList with ChangeNotifier {
  TodoList({
    required this.todos,
  });

  final List<Todo> todos;

  void removeTodo(int id) {
    todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }

  void addTodo(Todo todo) {
    todos.add(todo);
    notifyListeners();
  }

  void checkTodo(int id) {
    todos.firstWhere((todo) => todo.id == id).isChecked = true;
    notifyListeners();
  }

  void uncheckTodo(int id) {
    todos.firstWhere((todo) => todo.id == id).isChecked = false;
    notifyListeners();
  }
}
