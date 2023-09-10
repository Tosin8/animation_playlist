import 'package:flutter/material.dart';

class Orientation_bld extends StatefulWidget {
  const Orientation_bld({super.key});

  @override
  State<Orientation_bld> createState() => _Orientation_bldState();
}

class _Orientation_bldState extends State<Orientation_bld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientation"),
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Container(
              color: Colors.blue,
              child: const Center(child: Text('Portrait')),
            )
          : Container(
              color: Colors.green,
              child: const Center(
                child: Text('Landscape'),
              ),
            ),
    );
  }
}
