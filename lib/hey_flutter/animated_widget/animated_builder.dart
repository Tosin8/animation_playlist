import 'package:flutter/material.dart';

class widget2 extends StatefulWidget {
  const widget2({super.key});

  @override
  State<widget2> createState() => _widget2State();
}

class _widget2State extends State<widget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Animated Builder',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black),
      body: Text(''),
    );
  }
}
