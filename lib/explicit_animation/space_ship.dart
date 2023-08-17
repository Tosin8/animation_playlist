import 'package:flutter/material.dart';

class Space_Ship extends StatefulWidget {
  const Space_Ship({super.key});

  @override
  State<Space_Ship> createState() => _Space_ShipState();
}

class _Space_ShipState extends State<Space_Ship> {
  final Image SpaceShip = Image.asset('assets/images/spaceship.png');
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      SpaceShip,
      ClipPath(
        child: Container(
            height: 1000,
            decoration: BoxDecoration(
                gradient: RadialGradient(radius: 1.5, colors: [
              Colors.yellow,
              Colors.transparent,
            ]))),
      )
    ]);
  }
}
