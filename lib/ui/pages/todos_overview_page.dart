import 'package:flutter/material.dart';
import 'package:flutter_simple_architecture/actions/todo_actions.dart';
import 'package:flutter_simple_architecture/main.dart';

class TodosOverviewPage extends StatelessWidget {
  const TodosOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListenableBuilder(
        listenable: todoList,
        builder: (context, _) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: todoList.todos
                .map(
                  (todo) => Card(
                    child: ListTile(
                      onTap: () => checkTodo(todo.id, !todo.isChecked),
                      onLongPress: () => removeTodo(todo.id),
                      title: Text(todo.text),
                      trailing: Icon(
                        todo.isChecked ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                      ),
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () => addTodo('Test'),
            child: const Text('Add new Todo'),
          ),
        ),
      ),
    );
  }
}
