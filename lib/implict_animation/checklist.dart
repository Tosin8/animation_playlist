import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: const Column(
        children: [
          TaskItem(label: 'Load rocket with supplies'),
          TaskItem(label: 'Launch rocket'),
          TaskItem(label: 'Circle the home planet'),
          TaskItem(label: 'Head out to the moon'),
          TaskItem(label: 'Build a port supply for mission mars'),
          TaskItem(label: 'Launch moon landers'),
        ],
      ),
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;
  const TaskItem({super.key, required this.label});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Checkbox(value: false, onChanged: null),
        Text(widget.label),
      ],
    );
  }
}
