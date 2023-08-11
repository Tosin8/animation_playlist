import 'package:flutter/material.dart';

class Animated_Icon extends StatefulWidget {
  const Animated_Icon({super.key});

  @override
  State<Animated_Icon> createState() => _Animated_IconState();
}

class _Animated_IconState extends State<Animated_Icon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Animated Icon',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: AnimatedIcon(
          icon: AnimatedIcons.home_menu,
          progress: _animationController,
        )));
  }
}
