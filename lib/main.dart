import 'package:animation_playlist/hey_flutter/onboarding/onboarding_home.dart';
import 'package:animation_playlist/hey_flutter/onboarding/onboarding_screen.dart';
import 'package:animation_playlist/hey_flutter/screen_challenge/screen_challenge.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  // final bool showHome;

  const MyApp({super.key, required bool showHome});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: showHome ? OnboardHome() : OnBoardingPage(),
    );
  }
}
