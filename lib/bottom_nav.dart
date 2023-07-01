import 'package:flutter/material.dart';

class Nav_Bar extends StatefulWidget {
  const Nav_Bar({super.key});

  @override
  State<Nav_Bar> createState() => _Nav_BarState();
}

class _Nav_BarState extends State<Nav_Bar> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: screenWidth * .155,
      ),
    );
  }
}
