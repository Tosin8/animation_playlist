import 'package:flutter/material.dart';

class Star extends StatefulWidget {
  const Star({super.key});

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Animated Container',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AnimatedContainer(
            width: _bigger ? 100 : 500,
            duration: const Duration(seconds: 3),
            child: Image.network(
                'https://images.unsplash.com/photo-1671600939110-7b0625c25ef5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80'),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              _bigger = !_bigger;
            }),
            child: const Icon(Icons.star),
          )
        ],
      ),
    );
  }
}
