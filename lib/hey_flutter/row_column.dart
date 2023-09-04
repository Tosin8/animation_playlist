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
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.red),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(flex: 2, child: Container(color: Colors.blue)),
                  Expanded(flex: 3, child: Container(color: Colors.yellow))
                ],
              ),
            )
          ],
        ));
  }
}
