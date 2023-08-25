import 'package:flutter/material.dart';

class Widget6 extends StatefulWidget {
  const Widget6({super.key});

  @override
  State<Widget6> createState() => _Widget6State();
}

class _Widget6State extends State<Widget6> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Rotation'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: Duration(milliseconds: 300),
                child: const FlutterLogo(size: 100),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
              child: Text('Rotate Logo'),
              style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
            )
          ],
        )));
  }
}
