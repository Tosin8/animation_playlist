import 'package:flutter/material.dart';

class Widget6 extends StatefulWidget {
  const Widget6({super.key});

  @override
  State<Widget6> createState() => _Widget6State();
}

class _Widget6State extends State<Widget6> {
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
                turns: 0.0,
                duration: Duration(milliseconds: 300),
                child: const FlutterLogo(size: 100),
              ),
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: Text('Rotate Logo'),
              style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
            )
          ],
        )));
  }
}
