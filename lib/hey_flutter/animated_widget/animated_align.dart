import 'package:flutter/material.dart';

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          toolbarHeight: 100.0,
          title: const Text(
            'Animated Align',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
          height: 300,
          width: double.infinity,
          color: Colors.greenAccent,
          child: AnimatedAlign(
              duration: Duration(seconds: 2),
              alignment: Alignment.bottomLeft,
              child: const FlutterLogo(size: 50.0)),
        )));
  }
}
