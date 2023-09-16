import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<String> categories = [
    'Hand Bag',
    'Jewellery',
    'Footwear',
    'Dresses',
    'Dock',
    'Cat',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout Builder'),
        ),
        body: SizedBox(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: ((context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(categories[index]),
                  ))),
        ));
  }
}
