import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: 'Load rocket with supplies'),
      ],
    );
  }
}


class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}