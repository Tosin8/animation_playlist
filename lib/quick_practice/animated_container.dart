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
          title: Text(
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
            Container(
              decoration: BoxDecoration(),
            )
          ],
        ));
  }
}
