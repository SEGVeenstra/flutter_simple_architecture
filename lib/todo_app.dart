import 'package:flutter/material.dart';
import 'package:flutter_simple_architecture/ui/pages/todos_overview_page.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodosOverviewPage(),
    );
  }
}
