import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Consumer<BreadCrumbProvider>(
                builder: (context, value, child) {
                  return BreadCrumbsWidget(
                    breadCrumbs: value.items,
                    onTapped: (BreadCrumb) {},
                  );
                },
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/new',
                    );
                  },
                  child: const Text('Add New Bread Crumb')),
              TextButton(
                  onPressed: () {
                    // communicating with the provider.
                    context.read<BreadCrumbProvider>().reset();
                    context.select((value) => null);
                  },
                  child: const Text('Reset')),
            ],
          ),
        ));
  }
}

class BreadCrumb {
  late bool isActive;
  late final String name;
  late final uuid;

  // creating constructor
  BreadCrumb({
    required this.isActive,
    required this.name,
  }) : uuid = const Uuid().v4();

  void activate() {
    isActive = true;
  }

// before importing uuid package.
  // @override
  // bool operator ==(covariant BreadCrumb other) =>
  //     isActive == other.isActive && name == other.name;

  @override
  bool operator ==(covariant BreadCrumb other) => uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;
  String get title => name + (isActive ? '>' : '');
}

class BreadCrumbProvider extends ChangeNotifier {
  final List<BreadCrumb> _items = [];

  // tending to creating an external read only access.
  UnmodifiableListView<BreadCrumb> get items => UnmodifiableListView(_items);
  // a function to add breadcrumbs
  void add(BreadCrumb breadcrumb) {
    for (final item in _items) {
      item.activate();
    }
    _items.add(breadcrumb);
    notifyListeners();
  }

  void reset() {
    _items.clear();
    notifyListeners();
  }
}

typedef OnBreadCrumbTapped = void Function(BreadCrumb);

class BreadCrumbsWidget extends StatelessWidget {
  final OnBreadCrumbTapped onTapped;
  final UnmodifiableListView<BreadCrumb> breadCrumbs;
  const BreadCrumbsWidget(
      {super.key, required this.breadCrumbs, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: breadCrumbs.map(
        (breadCrumb) {
          return GestureDetector(
            onTap: () {
              onTapped(breadCrumb);
            },
            child: Text(
              breadCrumb.title,
              style: TextStyle(
                color: breadCrumb.isActive ? Colors.blue : Colors.black,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
