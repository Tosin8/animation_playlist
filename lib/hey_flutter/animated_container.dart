import 'dart:math';

import 'package:flutter/material.dart';

class Animated_Container extends StatefulWidget {
  const Animated_Container({super.key});

  @override
  State<Animated_Container> createState() => _Animated_ContainerState();
}

class _Animated_ContainerState extends State<Animated_Container> {
  final random = Random();
  double boxHeight = 100;
  double boxWidth = 100;
  Color boxColor = Colors.deepPurple;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  void _changeBoxSize() {
    setState(() {
      boxWidth = random.nextInt(400).toDouble();
      boxHeight = random.nextInt(400).toDouble();
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
  }

  void _changeRadius() {
    setState(() {
      _borderRadius = BorderRadius.circular(random.nextInt(80).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shape Change',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: boxWidth,
          height: boxHeight,
          decoration:
              BoxDecoration(color: boxColor, borderRadius: _borderRadius),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: _changeBoxColor, icon: Icon(Icons.palette)),
          IconButton(onPressed: _changeRadius, icon: Icon(Icons.interests)),
          IconButton(onPressed: _changeBoxSize, icon: Icon(Icons.aspect_ratio))
        ],
      ),
    );
  }
}
