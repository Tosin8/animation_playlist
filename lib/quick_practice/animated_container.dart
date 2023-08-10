import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerStar extends StatefulWidget {
  const AnimatedContainerStar({super.key});

  @override
  State<AnimatedContainerStar> createState() => _AnimatedContainerStarState();
}

class _AnimatedContainerStarState extends State<AnimatedContainerStar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Implicit Animation',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 3,
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TweenAnimationBuilder(
            duration: const Duration(seconds: 100),
            tween: Tween<double>(begin: 0, end: 180),
            builder: (_, double angle, __) {
              return Transform.rotate(
                angle: angle,
                child: Center(
                  child: Image.asset(
                    'assets/images/star.png',
                    width: 120,
                  ),
                ),
              );
            })
      ]),
    );
  }
}
