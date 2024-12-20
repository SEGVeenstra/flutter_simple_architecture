/// Todo's are mutable so that it's easier for TodoList to update them.
class Todo {
  Todo({
    required this.id,
    this.text = '',
    this.isChecked = false,
  });

  final int id;
  String text;
  bool isChecked;
}
