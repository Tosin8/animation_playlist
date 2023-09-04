import 'package:flutter/material.dart';

class Structure extends StatefulWidget {
  const Structure({super.key});

  @override
  State<Structure> createState() => _StructureState();
}

class _StructureState extends State<Structure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Structure'),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(color: Colors.yellow, width: 300, height: 300),
              Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
              )
            ],
          ),
        ));
  }
}
