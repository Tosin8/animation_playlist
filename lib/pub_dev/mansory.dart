import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MansoryView extends StatefulWidget {
  const MansoryView({super.key});

  @override
  State<MansoryView> createState() => _MansoryViewState();
}

class _MansoryViewState extends State<MansoryView> {
final _items = [
  'assets/images/food.jpg', 
  'assets/images/food1.jpg', 
  'assets/images/food2.jpg', 
  'assets/images/pizza.jpg', 
  'assets/images/wine.jpg', 
  'assets/images/berry.jpg', 
  'assets/images/pancake.jpg', 
  'assets/images/spaghetti.jpg'
]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mansory View'), 
      ),
      body: SingleChildScrollView(
        child: MasonryView(
          listOfItem: _items,
          numberOfColumn: 2, 
          itemBuilder: (_items) {
            return Image.asset(_items);
          },
        ), 

      )
    );
  }
}