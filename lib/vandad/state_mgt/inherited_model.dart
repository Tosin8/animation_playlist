import 'dart:math';

import 'package:flutter/material.dart';

class inherit_model extends StatefulWidget {
  const inherit_model({super.key});

  @override
  State<inherit_model> createState() => _inherit_modelState();
}

class _inherit_modelState extends State<inherit_model> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Inherit Model',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black45),
    );
  }
}

// creating an array of colors.
final colors = [
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.cyan,
  Colors.purple,
  Colors.brown,
  Colors.amber,
  Colors.deepPurple,
];

enum AvailableColors { one, two }

// grabbing random colors elements.
extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(Random().nextInt(length));
}
