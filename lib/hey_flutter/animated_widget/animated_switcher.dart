import 'dart:io';

import 'package:flutter/material.dart';

class widget7 extends StatefulWidget {
  const widget7({super.key});

  @override
  State<widget7> createState() => _widget7State();
}

class _widget7State extends State<widget7> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          'Animated Switcher',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: Text(
              '$_count',
              style: TextStyle(fontSize: 40),
              key: ValueKey(_count),
            ),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: Text('Add')),
        ]),
      ),
    );
  }
}
