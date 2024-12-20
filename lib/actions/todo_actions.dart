import 'package:flutter_simple_architecture/main.dart';
import 'package:flutter_simple_architecture/models/todo.dart';

void removeTodo(int id) {
  todoList.removeTodo(id);
}

void addTodo(String text) {
  final todo = Todo(
    id: DateTime.now().millisecondsSinceEpoch,
    text: text,
  );

  todoList.addTodo(todo);
}

void checkTodo(int id, bool check) {
  if (check) {
    todoList.checkTodo(id);
  } else {
    todoList.uncheckTodo(id);
  }
}
