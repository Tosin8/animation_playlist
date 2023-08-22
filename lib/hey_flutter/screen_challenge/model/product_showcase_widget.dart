import 'package:flutter/material.dart';

import 'product_showcase.dart';

class ShowCaseWidget extends StatelessWidget {
  final Showcase showcase;
  const ShowCaseWidget({super.key, required this.showcase});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(showcase.image, fit: BoxFit.cover), buildInfo()],
    );
  }

  Container buildInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Text(
            showcase.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            showcase.owner,
            style: TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
