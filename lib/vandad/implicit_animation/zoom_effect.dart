import 'package:flutter/material.dart';

class Zoom_Effect extends StatefulWidget {
  const Zoom_Effect({super.key});

  @override
  State<Zoom_Effect> createState() => _Zoom_EffectState();
}

const defaultWidth = 100.0;

// ignore: camel_case_types
class _Zoom_EffectState extends State<Zoom_Effect> {
  var _isZoomedIn = false;
  var _buttonTitle = 'Zoom In';

  var _width = defaultWidth;
  var _curve = Curves.bounceOut;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Zoom Effect',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              width: _width,
              child: Image.network(
                  'https://images.unsplash.com/photo-1686824579901-9c90fd95b086?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80'),
            ),
          ]),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _isZoomedIn = !_isZoomedIn;
                  _buttonTitle = _isZoomedIn ? 'Zoom Out' : 'Zoom In';
                  _width = _isZoomedIn
                      ? MediaQuery.of(context).size.width
                      : defaultWidth;
                });
              },
              child: Text(_buttonTitle)),
        ],
      ),
    );
  }
}
