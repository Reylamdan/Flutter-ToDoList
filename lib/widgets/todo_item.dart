import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const TodoItem({
    super.key,
    required this.todo,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: CircleAvatar(
        backgroundColor: todo.isDone ? Colors.green : Colors.blue,
        child: Icon(
          todo.isDone ? Icons.check : Icons.pending,
          color: Colors.white,
        ),
      ),
      title: Text(
        todo.title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: Text(
        todo.isDone ? "Selesai" : "Belum selesai",
        style: TextStyle(
          color: todo.isDone ? Colors.green : Colors.redAccent,
          fontStyle: FontStyle.italic,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.redAccent),
        onPressed: onDelete,
      ),
      onTap: onToggle,
    );
  }
}
