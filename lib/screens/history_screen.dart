import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<TodoProvider>().todos;

    return Scaffold(
      appBar: AppBar(title: const Text('History')),
      body: ListView(
        children: todos.map((t) {
          return ListTile(
            title: Text(t.title),
            subtitle: Text(t.isDone ? 'Done' : 'Pending'),
          );
        }).toList(),
      ),
    );
  }
}
