import 'package:flutter/material.dart';

class widget4 extends StatefulWidget {
  const widget4({super.key});

  @override
  State<widget4> createState() => _widget4State();
}

class _widget4State extends State<widget4> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          title: Text('Animated Icon'),
        ),
        body: Center());
  }
}
