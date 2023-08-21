import 'package:flutter/material.dart';

import 'component.dart';

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
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.notifications_on))
        ],
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
        Stack(
            children: [HeaderImage(), const PopUpButton(), const User_Info()]),
        const SizedBox(height: 20),
        const IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Followers',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(width: 60),
              VerticalDivider(color: Colors.black),
              SizedBox(width: 60),
              Column(
                children: [
                  Text(
                    '38',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Showcasing the finest food,drinks and travel. Recipes,healthy, tips , food photography.',
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
