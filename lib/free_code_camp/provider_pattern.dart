import 'package:flutter/material.dart';

class CounterTimer extends StatefulWidget {
  const CounterTimer({super.key});

  @override
  State<CounterTimer> createState() => _CounterTimerState();
}

class _CounterTimerState extends State<CounterTimer> {
  int counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Counter Timer',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        )));
  }
}
