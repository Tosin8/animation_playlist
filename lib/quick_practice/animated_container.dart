import 'package:flutter/material.dart';

class AnimatedImages extends StatefulWidget {
  const AnimatedImages({super.key});

  @override
  State<AnimatedImages> createState() => _AnimatedImagesState();
}

class _AnimatedImagesState extends State<AnimatedImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Implicit Animation',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              'assets/images/star.png',
              width: 100,
            )),
            SizedBox(height: 10),
            Container(
              width: 100,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Press Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
