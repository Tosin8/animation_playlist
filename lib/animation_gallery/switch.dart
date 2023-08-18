import 'package:flutter/material.dart';

class SwitchAnimate extends StatefulWidget {
  const SwitchAnimate({super.key});

  @override
  State<SwitchAnimate> createState() => _SwitchAnimateState();
}

class _SwitchAnimateState extends State<SwitchAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('OFF'),
    ));
  }
}
