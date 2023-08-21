import 'package:flutter/material.dart';

class PopUpButton extends StatelessWidget {
  const PopUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 0,
        child: PopupMenuButton(
            color: Colors.white,
            itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                      child: GestureDetector(
                          onTap: () {
                            print('View Profile Pressed');
                          },
                          child: const Text('View Profile'))),
                  PopupMenuItem(
                      child: GestureDetector(
                          onTap: () {
                            print('Add to friends pressed');
                          },
                          child: const Text('Add to friends'))),
                ]));
  }
}
