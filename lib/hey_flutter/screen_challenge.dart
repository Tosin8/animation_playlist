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
              right: 0,
              child: PopupMenuButton(
                  color: Colors.white,
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                            child: GestureDetector(
                                onTap: () {
                                  print('View Profile Pressed');
                                },
                                child: const Text('View Profile'))),
                        PopupMenuItem(
                            child: GestureDetector(
                                onTap: () {
                                  print('Add to friends pressed');
                                },
                                child: const Text('Add to friends'))),
                      ])),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                Container(
                    width: 100,
                    height: 120,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.8),
                            spreadRadius: 2,
                          )
                        ],
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/chef_profile.jpg',
                            )))),
                Column(
                  children: [
                    const Text(
                      'TasteMe',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('follow me button has been pressed');
                      },
                      child: Container(
                          height: 30,
                          width: 75,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
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
