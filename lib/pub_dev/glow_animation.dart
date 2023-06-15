import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class Avatar_Glow extends StatefulWidget {
  const Avatar_Glow({super.key});

  @override
  State<Avatar_Glow> createState() => _Avatar_GlowState();
}

class _Avatar_GlowState extends State<Avatar_Glow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: AvatarGlow(
            glowColor: Colors.white,
            endRadius: 120,
            duration: const Duration(seconds: 2),
            repeat: true,
            showTwoGlows: true,
            curve: Curves.easeOutQuad,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(99)),
              child: const Icon(
                Icons.favorite,
                color: Colors.blue,
                size: 40,
              ),
            )),
      ),
    );
  }
}
