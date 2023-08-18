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
    return Scaffold(body: Center(child: Icon(Icons.arrow_downward)));
  }
}
