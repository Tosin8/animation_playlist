import 'package:flutter/material.dart';

class widget7 extends StatefulWidget {
  const widget7({super.key});

  @override
  State<widget7> createState() => _widget7State();
}

class _widget7State extends State<widget7> {
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
    );
  }
}
