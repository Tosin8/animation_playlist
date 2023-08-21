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
                  color: Colors.white,
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                            child: GestureDetector(
                                onTap: () {
                                  print('View Profile Pressed');
                                },
                                child: Text('View Profile'))),
                        PopupMenuItem(
                            child: GestureDetector(
                                onTap: () {
                                  print('Add to friends pressed');
                                },
                                child: Text('Add to friends'))),
                      ])),
          Positioned(
            top: 200,
            child: Row(
              children: [
                Container(
                    width: 100,
                    height: 120,
                    child: Image.asset('assets/images/food1.jpg')),
                Column(
                  children: [
                    Text(
                      'TasteMe',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Follow',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                )
              ],
            ),
          )
        ])
      ]),
    );
  }
}
