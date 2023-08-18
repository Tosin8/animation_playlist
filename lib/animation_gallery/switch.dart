import 'package:flutter/material.dart';

class SwitchAnimate extends StatefulWidget {
  const SwitchAnimate({super.key});

  @override
  State<SwitchAnimate> createState() => _SwitchAnimateState();
}

class _SwitchAnimateState extends State<SwitchAnimate> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => setState(() {
          isTapped = !isTapped;
        }),
        child: Text(
          isTapped ? 'OFF' : 'ON',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
        ),
      ),
    ));
  }
}
