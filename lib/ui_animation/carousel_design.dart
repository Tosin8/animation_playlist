import 'package:flutter/material.dart';

class Carosel_Design extends StatefulWidget {
  const Carosel_Design({super.key});

  @override
  State<Carosel_Design> createState() => _Carosel_DesignState();
}

class _Carosel_DesignState extends State<Carosel_Design> {
  final List<List<String>> products = [
    ['assets/images/food.jpg', 'Pinky Berry', '100 \$'],
    ['assets/images/food1.jpg', 'Straw Berry', '120 \$'],
    ['assets/images/food2.jpg', 'Casio Berry', '80 \$'],
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _prev() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details) {
              if (details.velocity.pixelsPerSecond.dx > 0) {
                _prev();
              } else if (details.velocity.pixelsPerSecond.dx < 0) {
                _next();
              }
            },
            child: Container(
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(products[currentIndex][0]),
                        fit: BoxFit.cover)),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.grey.withOpacity(.9),
                          Colors.grey.withOpacity(.0)
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [],
                    ))),
          )
        ],
      )),
    );
  }
}
