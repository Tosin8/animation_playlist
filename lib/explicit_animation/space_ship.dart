import 'package:flutter/material.dart';

class Space_Ship extends StatefulWidget {
  const Space_Ship({super.key});

  @override
  State<Space_Ship> createState() => _Space_ShipState();
}

class _Space_ShipState extends State<Space_Ship> {
  final Image Galaxy = Image.asset('assets/images/galaxy.jpg');
  final Image SpaceShip = Image.asset('assets/images/spaceship.png');
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Galaxy),
      SpaceShip,
    ]);
  }
}
