import 'package:flutter/material.dart';

class Star_1 extends StatefulWidget {
  const Star_1({super.key});

  @override
  State<Star_1> createState() => _Star_1State();
}

class _Star_1State extends State<Star_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Tween Builder'),
      ),
      body: Column(
        children: [
          Center(
              child: TweenAnimationBuilder(
            duration: const Duration(milliseconds: 300),
            tween: Tween<double>(begin: 0, end: 2 * math.pi),
            builder: (_, double angle, __) {
              return Transform.rotate(
                angle: angle,
                child: Image.network(
                    'https://images.unsplash.com/photo-1671600939110-7b0625c25ef5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80'),
              );
            },
          ))
        ],
      ),
    );
  }
}
