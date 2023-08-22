import 'package:flutter/material.dart';

import 'product_showcase.dart';

class ShowCaseWidget extends StatelessWidget {
  final Showcase showcase;
  const ShowCaseWidget({super.key, required this.showcase});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(showcase.image, fit: BoxFit.cover)),
          Material(
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(8))),
            child: Icon(
              Icons.image,
              color: Colors.black.withOpacity(0.8),
            ),
          )
        ]),
        buildInfo()
      ],
    );
  }

  Container buildInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //const SizedBox(height: 2),
          Text(
            showcase.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          //  const SizedBox(height: 2),
          Text(
            showcase.owner,
            style: const TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
