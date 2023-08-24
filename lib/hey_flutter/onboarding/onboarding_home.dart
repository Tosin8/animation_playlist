import 'package:animation_playlist/hey_flutter/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardHome extends StatefulWidget {
  const OnboardHome({super.key});

  @override
  State<OnboardHome> createState() => _OnboardHomeState();
}

class _OnboardHomeState extends State<OnboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Onboard Home',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                // navigate directly to onboaring page.
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', false);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => OnBoardingPage()));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
