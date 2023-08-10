import 'package:flutter/material.dart';

class AnimatedContainerStar extends StatefulWidget {
  const AnimatedContainerStar({super.key});

  @override
  State<AnimatedContainerStar> createState() => _AnimatedContainerStarState();
}

class _AnimatedContainerStarState extends State<AnimatedContainerStar> {
  bool _bigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Implicit Animation',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 3,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              width: _bigger ? 80 : 120,
              duration: const Duration(seconds: 500),
              curve: Curves.bounceIn,
              child: Image.asset(
                'assets/images/star.png',

                // color: _bigger ? Colors.green : Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                _bigger = !_bigger;
              });
            },
            child: Container(
                width: 100,
                height: 30,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text(
                  'Enlargement',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
