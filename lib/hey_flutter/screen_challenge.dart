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
        title: const Text(
          'TasteMe',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white24,
        elevation: 3,
      ),
      drawer: const Drawer(),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Stack(children: [
          Container(
            child: Image.asset('assets/images/food.jpg'),
          ),
          Positioned(
              top: 20,
              left: 350,
              child: PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(child: Text('View Profile')),
                        PopupMenuItem(child: Text('Add to friends')),
                      ])),
        ])
      ]),
    );
  }
}
