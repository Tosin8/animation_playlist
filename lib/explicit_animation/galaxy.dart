import 'package:flutter/material.dart';

class Rotating_Galaxy extends StatefulWidget {
  const Rotating_Galaxy({super.key});

  @override
  State<Rotating_Galaxy> createState() => _Rotating_GalaxyState();
}

class _Rotating_GalaxyState extends State<Rotating_Galaxy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image(image: 'assets/images/Rotating_Galaxy.jpg'),
      ),
    );
  }
}
