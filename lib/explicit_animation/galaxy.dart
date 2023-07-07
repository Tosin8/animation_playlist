import 'package:flutter/material.dart';

class Rotating_Galaxy extends StatefulWidget {
  const Rotating_Galaxy({super.key});

  @override
  State<Rotating_Galaxy> createState() => _Rotating_GalaxyState();
}

class _Rotating_GalaxyState extends State<Rotating_Galaxy>
    with SingleTickerProviderStateMixin {
// Creating an explicit animation.

  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync:
          this, // give reference to the object to notify our changes bringing it with the 'single ticker'
    )..repeat(); // asking the controller to keep repeating the animation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: RotationTransition(
              alignment: Alignment.center,
              turns: _animationController,
              child: Image.asset(
                'assets/images/galaxy.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: TimeStopper(
            controller: _animationController,
          ),
        ),
      ]),
    );
  }
}

class TimeStopper extends StatelessWidget {
  final AnimationController controller;
  const TimeStopper({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (controller.isAnimating) {
          controller.stop();
        } else {
          controller.repeat();
        }
      },
      child: Container(
        child: Icon(Icons.draw),
        width: 100,
        height: 100,
      ),
    );
  }
}
