import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:animation_playlist/hey_flutter/screen_challenge/component.dart';
import 'package:animation_playlist/hey_flutter/screen_challenge/data/showcases.dart';
import 'package:animation_playlist/hey_flutter/screen_challenge/model/product_showcase_widget.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _UserState();
}

class _UserState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(children: [
            HeaderImage(),
            const PopUpButton(),
            const User_Info()
          ]),
          const SizedBox(height: 20),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Followers',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(width: 60),
                VerticalDivider(color: Colors.black),
                SizedBox(width: 60),
                Column(
                  children: [
                    Text(
                      '38',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Posts',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Showcasing the finest food,drinks and travel. Recipes,healthy, tips , food photography.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 20),
        ],
      ),
      GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 1,
          ),
          itemCount: showcases.length,
          itemBuilder: (context, index) =>
              ShowCaseWidget(showcase: showcases[index]))

      // StaggeredGridView.countBuilder(
      //   crossAxisCount: 4,
      //   itemCount : showcases.length,
      //   itemBuilder:(BuildContext context, int index) =>
      //   ShowCaseWidget(showcase: showcases[index],)
      //   staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
      // ),
    ]);
  }
}
