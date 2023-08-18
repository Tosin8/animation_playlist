import 'package:flutter/material.dart';

class SwitchAnimate extends StatefulWidget {
  const SwitchAnimate({super.key});

  @override
  State<SwitchAnimate> createState() => _SwitchAnimateState();
}

class _SwitchAnimateState extends State<SwitchAnimate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        'OFF',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
      ),
    ));
  }
}
