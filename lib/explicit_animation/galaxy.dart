import 'package:flutter/material.dart';

class Rotating_Galaxy extends StatefulWidget {
  const Rotating_Galaxy({super.key});

  @override
  State<Rotating_Galaxy> createState() => _Rotating_GalaxyState();
}

class _Rotating_GalaxyState extends State<Rotating_Galaxy> {
// Creating an explicit animation.

  AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RotationTransition(
        turns: 1,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/galaxy.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
