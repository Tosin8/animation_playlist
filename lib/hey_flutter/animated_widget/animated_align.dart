import 'package:flutter/material.dart';

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {
  bool press = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          toolbarHeight: 100.0,
          title: const Text(
            'Animated Align',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.greenAccent,
              child: AnimatedAlign(
                  duration: Duration(seconds: 2),
                  curve: Curves.bounceIn,
                  alignment: press ? Alignment.bottomLeft : Alignment.topRight,
                  child: const FlutterLogo(size: 50.0)),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  press = !press;
                });
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                    child: Text('Press',
                        style: TextStyle(
                          color: Colors.white,
                        ))),
              ),
            )
          ],
        )));
  }
}
