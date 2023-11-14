import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(color: Colors.red),
              child: AnimatedAlign(
                alignment: selected ? Alignment.bottomRight : Alignment.topLeft,
                duration: Duration(milliseconds: 1000),
                child: FlutterLogo(
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
                child: Text(
              'Press Me!',
              style: TextStyle(color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
