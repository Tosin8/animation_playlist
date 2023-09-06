import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

String title = 'tap the scren';

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: GestureDetector(
          onTap: () {
          setState(() {
            title = DateTime.now().toIso8601String();
          });
        }));
  }
}
