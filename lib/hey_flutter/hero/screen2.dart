import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Screen 2 "),
        ),
        body: AspectRatio(
            aspectRatio: 1,
            child: Hero(
                tag: 'image1',
                child:
                    Image.asset('assets/images/food.jpg', fit: BoxFit.cover))));
  }
}
