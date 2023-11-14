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

// import 'dart:developer' as devtools show log;

// void main() {
//   runApp(const MyApp());
// }

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
//       home: const inherit_model(),
//     );
//   }
// }

// run for notifier.
// SAMPLE: COUNTER TIMER SAMPLE.

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider.value(
//           value: Counter(),
//         )
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         debugShowCheckedModeBanner: false,
//         home: CounterTimer(),
//       ),
//     );
//   }
// }

// ITEM LIST FOR PROVIDER.

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ItemData(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Provider Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.green,
//         ),
//         home: ItemList(),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'vandad/testing_provider/home_page.dart';
// import 'vandad/testing_provider/newBreadCrumbs.dart';

// void main() {
//   runApp(ChangeNotifierProvider(
//     create: (_) => BreadCrumbProvider(),
//     child: MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const HomePage(),
//       routes: {
//         '/new': (context) => const NewBreadCrumbWidget(),
//       },
//     ),
//   ));
// }

import 'package:animation_playlist/explicit_animation/bounce.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ExplicitAnimations(),
    ),
  );
}
