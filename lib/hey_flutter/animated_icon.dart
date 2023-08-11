import 'package:flutter/material.dart';

class Animated_Icon extends StatefulWidget {
  const Animated_Icon({super.key});

  @override
  State<Animated_Icon> createState() => _Animated_IconState();
}

class _Animated_IconState extends State<Animated_Icon>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  bool isPlaying = false;

  void toggleIcon() => setState(() {
        isPlaying = !isPlaying;
        isPlaying
            ? _animationController.forward()
            : _animationController.reverse();
      });
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // MAKING THE BELOW CODE TO BEING IN AUTO WITHOUT BEING PRESSD.
    // ..forward().then((_) async {
    //     await Future.delayed(const Duration(seconds: 1));
    //     _animationController.reverse();
    //   });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated Icon',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: IconButton(
          splashColor: Colors.green,
          splashRadius: 3,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            size: 160,
            progress: _animationController,
          ),
          onPressed: () {
            toggleIcon();
          },
        ),
      ),
    );
  }
}
