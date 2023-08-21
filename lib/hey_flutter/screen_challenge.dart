import 'package:flutter/material.dart';

class Screen_Challenge extends StatefulWidget {
  const Screen_Challenge({super.key});

  @override
  State<Screen_Challenge> createState() => _Screen_ChallengeState();
}

class _Screen_ChallengeState extends State<Screen_Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TasteMe',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white24,
      ),
      drawer: Drawer(),
    );
  }
}
