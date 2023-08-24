import 'package:flutter/material.dart';

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
          IconButton(onPressed: () async {}, icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
