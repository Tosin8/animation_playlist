import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Screen 1 "),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
          ),
          // child: Image.asset('assets/images/food.jpg')
        ),
      ),
    );
  }
}
