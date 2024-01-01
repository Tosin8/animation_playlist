import 'package:flutter/material.dart';

class Space_Ship extends StatefulWidget {
  const Space_Ship({super.key});

  @override
  State<Space_Ship> createState() => _Space_ShipState();
}

class _Space_ShipState extends State<Space_Ship>
    with SingleTickerProviderStateMixin {
  final Image Galaxy =
      Image.asset('assets/images/galaxy.jpg', fit: BoxFit.cover);
  final Image SpaceShip = Image.asset('assets/images/spaceship.png');

  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(alignment: Alignment.center, children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Galaxy),
          AnimatedBuilder(
              animation: _animationController,
              builder: (_, __) {
                return ClipPath(
                  clipper: const BeamClipper(),
                  child: Container(
                      height: 1000,
                      decoration: BoxDecoration(
                          gradient: RadialGradient(radius: 1.5, colors: const [
                        Colors.yellow,
                        Colors.transparent,
                      ], stops: [
                        0,
                        _animationController.value
                      ]))),
                );
              }),
          SpaceShip
        ]),
      ),
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
