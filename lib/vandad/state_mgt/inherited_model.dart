import 'dart:math';

import 'package:flutter/material.dart';

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

// creating an array of colors.
final colors = [
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.cyan,
  Colors.purple,
  Colors.brown,
  Colors.amber,
  Colors.deepPurple,
];

enum AvailableColors {
  one,
  two
} // hoding on to two MaterialColor properties named color1 and color2.

// creating the first inherit model
class AvailableColorsWidget extends InheritedModel<AvailableColors> {
  final AvailableColors color1;
  final AvailableColors color2;

  /// Creating constructor.
  const AvailableColorsWidget(
      {Key? key,
      required Widget child,
      required this.color1,
      required this.color2})
      : super(
          key: key,
          child: child,
        );

  // allowing grabbing a copy - descendants needs a way to grab a copy of this inherited model when being built.

  static AvailableColorsWidget of(
      BuildContext context, AvailableColors aspect) {
    return InheritedModel.inheritFrom<AvailableColorsWidget>(
      context,
      aspect: aspect,
    )!;
  }

  @override
  bool updateShouldNotify(covariant AvailableColorsWidget oldWidget) {
    // TODO: implement updateShouldNotify
    // throw UnimplementedError();
    return color1 != oldWidget.color1 || color2 != oldWidget.color2;
  }

  @override
  bool updateShouldNotifyDependent(
      covariant InheritedModel<AvailableColors> oldWidget,
      Set<AvailableColors> dependencies) {
    // TODO: implement updateShouldNotifyDependent
    throw UnimplementedError();
  }
}

// grabbing random colors elements.
extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(Random().nextInt(length));
}
