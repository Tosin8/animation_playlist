import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
    );
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
