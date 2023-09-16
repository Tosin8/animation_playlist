import 'package:flutter/material.dart';

class Clipping extends StatefulWidget {
  const Clipping({super.key});

  @override
  State<Clipping> createState() => _ClippingState();
}

class _ClippingState extends State<Clipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using Clip'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: const Image(image: AssetImage('assets/images/berry.jpg')),
          ),
          const SizedBox(height: 10),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/food1.jpg'),
            radius: 150,
          ),
          const SizedBox(height: 10),
          const ClipRect(
              child: Image(image: AssetImage('assets/images/food.jpg'))),
          const Spacer(),
        ],
      ),
    );
  }
}
