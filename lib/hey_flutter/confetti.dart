import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiSplash extends StatefulWidget {
  const ConfettiSplash({super.key});

  @override
  State<ConfettiSplash> createState() => _ConfettiSplashState();
}

class _ConfettiSplashState extends State<ConfettiSplash> {
  bool isPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.play();
  }

  final controller = ConfettiController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Confetti App'),
        ),
        body: Stack(
          children: [
            ConfettiWidget(
              confettiController: controller,
              shouldLoop: true,
            ),
            Center(
                child: ElevatedButton(
                    child: Text(isPlaying ? 'Stop' : 'Celebrate'),
                    onPressed: () {
                      if (isPlaying) {
                        controller.stop();
                      } else {
                        controller.play();
                      }
                    }))
          ],
        ));
  }
}
