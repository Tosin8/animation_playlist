// ignore: unused_import
import 'package:animation_playlist/hey_flutter/screen_challenge/screen_challenge.dart';

import 'package:flutter/material.dart';

import 'hey_flutter/animated_icon.dart';
import 'vandad/state_mgt/inherited_widget.dart';

void main() {
  runApp(const MyApp());
}

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final prefs = await SharedPreferences.getInstance();
//   final showHome = prefs.getBool('showHome') ?? false;

//   runApp(MyApp(showHome: showHome));
// }

// class MyApp extends StatelessWidget {
//   final bool showHome;

//   const MyApp({
//     super.key,
//     required this.showHome,
//   });

//   // This widget is the root of your application, being used in onboarding.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: showHome ? const OnboardHome() : const OnBoardingPage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: name(),
    );
  }
}
