import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Container(
        child: LayoutBuilder(builder: context, constraints){
          final width = constraints.width; 
          final height = constraints.height;

          return Container(
            child: Center();
          )
        },
      )
    );
  }
}
