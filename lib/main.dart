import 'package:flutter/material.dart';
import 'package:flutter_simple_architecture/models/todo_list.dart';
import 'package:flutter_simple_architecture/todo_app.dart';

// Use global var for now, but can use any service locator/di you like
final todoList = TodoList(todos: []);

void main() {
  runApp(const TodoApp());
}
