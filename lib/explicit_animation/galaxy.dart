import 'package:flutter/material.dart';

class Rotating_Galaxy extends StatefulWidget {
  const Rotating_Galaxy({super.key});

  @override
  State<Rotating_Galaxy> createState() => _Rotating_GalaxyState();
}

class _Rotating_GalaxyState extends State<Rotating_Galaxy> 
with SingleTickerProviderStateMixin{
// Creating an explicit animation.

  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 5), 
      vsync: this, 

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RotationTransition(
        turns: 
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
