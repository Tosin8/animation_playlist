import 'package:flutter/material.dart';

class absorbPainter extends StatefulWidget {
  const absorbPainter({super.key});

  @override
  State<absorbPainter> createState() => _absorbPainterState();
}

class _absorbPainterState extends State<absorbPainter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Absorb Painter')),
        body: (Center(
            child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(onPressed: () {}, child: null),
            ),
            SizedBox(
              height: 200.0,
              width: 100.0,
              child: AbsorbPointer(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade200),
                    onPressed: () {},
                    child: null),
              ),
            )
          ],
        ))));
  }
}
