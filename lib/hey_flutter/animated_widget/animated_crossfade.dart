import 'package:flutter/material.dart';

class widget3 extends StatefulWidget {
  const widget3({super.key});

  @override
  State<widget3> createState() => _widget3State();
}

class _widget3State extends State<widget3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: Text('Animated Crossfade'),
      ),
    );
  }
}
