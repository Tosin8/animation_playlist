import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Column(
        children: [
          TaskItem(label: 'Load rocket with supplies'),
        ],
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;
  const TaskItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: null),
        Text(label),
      ],
    );
  }
}
