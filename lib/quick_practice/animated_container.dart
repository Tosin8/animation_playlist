import 'package:flutter/material.dart';

class AnimatedContainerStar extends StatefulWidget {
  const AnimatedContainerStar({super.key});

  @override
  State<AnimatedContainerStar> createState() => _AnimatedContainerStarState();
}

class _AnimatedContainerStarState extends State<AnimatedContainerStar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explicit Animation',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 3,
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RotationTransition(
          alignment: Alignment.center,
          turns: _animationController,
          child: Center(
            child: Image.asset(
              'assets/images/star.png',
              width: 120,
            ),
          ),
        ),
      ]),
    );
  }
}
