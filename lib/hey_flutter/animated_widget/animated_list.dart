import 'package:flutter/material.dart';

class widget5 extends StatefulWidget {
  const widget5({super.key});

  @override
  State<widget5> createState() => _widget5State();
}

class _widget5State extends State<widget5> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, 'Item ${_items.length + 1}');
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: const EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                'Deleted',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated List'),
        ),
        body: Column(
          children: [],
        ));
  }
}
