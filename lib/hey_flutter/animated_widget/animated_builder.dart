import 'package:flutter/material.dart';

class widget2 extends StatefulWidget {
  const widget2({super.key});

  @override
  State<widget2> createState() => _widget2State();
}

class _widget2State extends State<widget2> with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Animated Builder',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black),
      body: const Text(''),
    );
  }
}
