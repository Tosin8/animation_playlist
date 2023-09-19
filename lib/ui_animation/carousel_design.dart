import 'package:flutter/material.dart';

class Carosel_Design extends StatefulWidget {
  const Carosel_Design({super.key});

  @override
  State<Carosel_Design> createState() => _Carosel_DesignState();
}

class _Carosel_DesignState extends State<Carosel_Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details) {},
            child: Container(
              height: 500,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/berry.jpg'),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      )),
    );
  }
}
