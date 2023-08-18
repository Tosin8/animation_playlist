import 'package:flutter/material.dart';

class TickerS extends StatefulWidget {
  const TickerS({super.key});

  @override
  State<TickerS> createState() => _TickerSState();
}

class _TickerSState extends State<TickerS> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  int i = 0;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
  }

  void _update() {
    setState(() {
      i = (_animationController.value * 299792458).round();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('$i m/s'),
    ));
  }
}
