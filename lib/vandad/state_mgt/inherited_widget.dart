import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

String title = 'Tap the creen';

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  title = DateTime.now().toIso8601String();
                });
              },
              child: Center(
                  child: Container(
                      color: Colors.blue, child: const Text('Tap the Screen'))),
            ),
          ],
        ));
  }
}

// creating a fake api class.
class Api {
  String? dateAndTime;
}
