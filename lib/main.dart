import 'package:flutter/material.dart';

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

// RUN FOR INHERITED WIDGETS.
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: ApiProvider(
//         api: Api(),
//         child: const name(),
//       ),
//     );
//   }
// }

// RUN FOR INHERITED MODELS.

void main() {
  runApp(const MyApp());
}

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
      home: const inherit_model(),
    );
  }
}

class inherit_model extends StatefulWidget {
  const inherit_model({super.key});

  @override
  State<inherit_model> createState() => _inherit_modelState();
}

class _inherit_modelState extends State<inherit_model> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Inherit Model',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black45),
    );
  }
}
