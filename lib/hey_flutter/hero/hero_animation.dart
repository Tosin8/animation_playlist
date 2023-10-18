import 'package:animation_playlist/hey_flutter/hero/screen2.dart';
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
        body: Hero(
          tag: 'image1',
          child: Center(
              child: GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => Screen2()))),
            child: Container(
                height: 150,
                width: 200,
                child:
                    Image.asset('assets/images/food.jpg', fit: BoxFit.cover)),
          )),
        ));
  }
}
