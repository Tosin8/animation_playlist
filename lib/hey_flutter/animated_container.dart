import 'package:flutter/material.dart';

class Animated_Container extends StatefulWidget {
  const Animated_Container({super.key});

  @override
  State<Animated_Container> createState() => _Animated_ContainerState();
}

class _Animated_ContainerState extends State<Animated_Container> {
  double boxHeight = 100;
  double boxWidth = 100;
  Color boxColor = Colors.deepPurple;
  BorderRadius _borderRadius = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: boxWidth,
          height: boxHeight,
        )));
  }
}
