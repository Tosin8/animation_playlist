import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class ExplicitAnimations extends StatefulWidget {
  const ExplicitAnimations({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimations> createState() => _ExplicitAnimationsState();
}

// explicit animations with ready to use widgets - foo widgets.
class _ExplicitAnimationsState extends State<ExplicitAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlurryContainer(
          blur: 5,
          width: double.infinity,
          height: 200,
          elevation: 0,
          color: Colors.green,
          padding: const EdgeInsets.all(8),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: AlignTransition(
            alignment: _alignAnimation,
            child: RotationTransition(
              turns: _rotationAnimation,
              child: BlurryContainer.square(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                  ),
                  width: 120,
                  height: 120,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
