import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: const Column(
        children: [
          TaskItem(label: 'Load rocket with supplies'),
          TaskItem(label: 'Load rocket with supplies'),
          TaskItem(label: 'Load rocket with supplies'),
          TaskItem(label: 'Load rocket with supplies'),
          TaskItem(label: 'Load rocket with supplies'),
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
        const Checkbox(value: false, onChanged: null),
        Text(label),
      ],
    );
  }
}
