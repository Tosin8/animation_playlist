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

class User_Info extends StatelessWidget {
  const User_Info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 190),
        Positioned(
          //bottom: 0,
          child: Row(
            children: [
              SizedBox(width: 20),
              Container(
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset.zero,
                        )
                      ],
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/chef_profile.jpg',
                          )))),
              const SizedBox(width: 10),
              Column(
                children: [
                  const Text(
                    'Chef Ma Chi',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('follow me button has been pressed');
                    },
                    child: Container(
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 4,
                              )
                            ]),
                        child: const Center(
                          child: Text(
                            'Follow',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

Container HeaderImage() {
  return Container(
    child: Image.asset(
      'assets/images/food.jpg',
      color: Colors.black,
      colorBlendMode: BlendMode.difference,
    ),
  );
}
