import 'package:animation_playlist/hey_flutter/screen_challenge/pages/explore.dart';
import 'package:animation_playlist/hey_flutter/screen_challenge/pages/user.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'component.dart';
import 'pages/chat.dart';
import 'pages/homepage.dart';

class Screen_Challenge extends StatefulWidget {
  const Screen_Challenge({super.key});

  @override
  State<Screen_Challenge> createState() => _Screen_ChallengeState();
}

class _Screen_ChallengeState extends State<Screen_Challenge> {
  int currentIndex = 0;
  bool favoriteTapped = false;

  final screens = [
    const HomePage(),
    const Explore(),
    const ChatPage(),
    const UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                print('notification button bell was pressed');
              },
              icon: const Icon(Icons.notifications_on)),
          IconButton(
            onPressed: () {
              setState(() {
                favoriteTapped = !favoriteTapped;
              });
            },
            icon: favoriteTapped
                ? const Icon(Icons.favorite_border_outlined)
                : const Icon(Icons.favorite),
          ),
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
      body: IndexedStack(
        children: screens,
      ),

      // screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.blue,
        currentIndex: currentIndex,
        //  selectedFontSize: 25,
        showUnselectedLabels: false,
        // showSelectedLabels: false,
        onTap: (index) => setState(() => currentIndex = index),
        elevation: 3,
        //iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
