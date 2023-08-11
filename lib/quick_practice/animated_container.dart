import 'package:flutter/material.dart';

class AnimatedImages extends StatefulWidget {
  const AnimatedImages({super.key});

  @override
  State<AnimatedImages> createState() => _AnimatedImagesState();
}

class _AnimatedImagesState extends State<AnimatedImages> {
  bool _bigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            ' Explicit Animation',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              duration: Duration(seconds: 100),
              tween: Tween<double>(begin: 0, end: 5),
              builder: (_, double angle, __) {
                return Transform.rotate(
                  angle: angle,
                  child: Center(
                    child: Image.asset(
                      'assets/images/star.png',
                      width: 100,
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
