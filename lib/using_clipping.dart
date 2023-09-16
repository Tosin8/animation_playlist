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
        title: Text('Using Clip'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image(image: AssetImage('assets/images/berry.jpg')),
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/food1.jpg'),
            radius: 150,
          )
        ],
      ),
    );
  }
}
