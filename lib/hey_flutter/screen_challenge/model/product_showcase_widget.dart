import 'package:flutter/material.dart';

import 'product_showcase.dart';

class ShowCaseWidget extends StatelessWidget {
  final Showcase showcase;
  const ShowCaseWidget({super.key, required this.showcase});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(showcase.image, fit: BoxFit.cover),
      ],
    );
  }
}
