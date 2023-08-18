import 'package:flutter/material.dart';

class Gravity extends StatefulWidget {
  const Gravity({super.key});

  @override
  State<Gravity> createState() => _GravityState();
}

class _GravityState extends State<Gravity> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => setState(() {
          isTapped = !isTapped;
        }),
        child: AnimatedContainer(
          curve: isTapped ? Curves.bounceOut : Curves.ease,
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.only(bottom: isTapped ? 0 : 400),
          height: 150,
          width: 220,
          decoration: BoxDecoration(
              color: Color(0xffFF4e4e),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  blurRadius: 10,
                  offset: Offset(0, 7),
                ),
              ]),
          child: Center(
              child: Icon(isTapped ? Icons.arrow_downward : Icons.arrow_upward,
                  color: Colors.white, size: 35)),
        ),
      ),
    ));
  }
}
