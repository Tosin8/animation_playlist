import 'package:flutter/material.dart';

class Space_Ship extends StatefulWidget {
  const Space_Ship({super.key});

  @override
  State<Space_Ship> createState() => _Space_ShipState();
}

class _Space_ShipState extends State<Space_Ship> {
  final Image Galaxy =
      Image.asset('assets/images/galaxy.jpg', fit: BoxFit.cover);
  final Image SpaceShip = Image.asset('assets/images/spaceship.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Galaxy),
        ClipPath(
          clipper: BeamClipper(),
          child: Container(
              height: 1000,
              decoration: BoxDecoration(
                  gradient: RadialGradient(radius: 1.5, colors: [
                Colors.yellow,
                Colors.transparent,
              ]))),
        ),
        SpaceShip
      ]),
    );
  }
}

class BeamClipper extends CustomClipper<Path> {
  const BeamClipper();

  @override
  getClip(Size size) {
    return Path()
      ..lineTo(size.width / 2, size.height / 2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height / 2)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
