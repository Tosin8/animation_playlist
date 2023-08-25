import 'package:flutter/material.dart';

class widget3 extends StatefulWidget {
  const widget3({super.key});

  @override
  State<widget3> createState() => _widget3State();
}

class _widget3State extends State<widget3> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: Text('Animated Crossfade'),
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: Text(
                  'Switch',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }
}
