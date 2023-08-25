import 'package:flutter/material.dart';

class widget3 extends StatefulWidget {
  const widget3({super.key});

  @override
  State<widget3> createState() => _widget3State();
}

class _widget3State extends State<widget3> {
  bool _bool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: const Text('Animated Crossfade'),
        ),
        body: Column(
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            AnimatedCrossFade(
                firstChild: _firstChild,
                secondChild: Image.asset(
                  'assets/images/pancake.jpg',
                  width: double.infinity,
                ),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 5)),
            TextButton(
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: const Text(
                  'Switch',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ));
  }
}

Image _firstChild = Image.asset(
  'assets/images/pizza.jpg',
  width: double.infinity,
);
