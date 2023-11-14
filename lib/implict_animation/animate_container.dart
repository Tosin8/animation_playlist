import 'package:flutter/material.dart';

class AnimatingContainer extends StatefulWidget {
  const AnimatingContainer({super.key});

  @override
  State<AnimatingContainer> createState() => _AnimatingContainerState();
}

class _AnimatingContainerState extends State<AnimatingContainer> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
              // decoration: BoxDecoration(),
              duration: const Duration(milliseconds: 1000),
              width: selected ? 80 : 120,
              height: selected ? 70 : 100,
              color: selected ? Colors.blue : Colors.green,
              child: const FlutterLogo()),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Press Me',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
