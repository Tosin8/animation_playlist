import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

String title = 'Tap the creen';

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  title = DateTime.now().toIso8601String();
                });
              },
              child: Center(
                  child: Container(
                      color: Colors.blue, child: const Text('Tap the Screen'))),
            ),
          ],
        ));
  }
}

// creating a fake api class.
class Api {
  String? dateAndTime;

  Future<String> getDateAndTime() {
    return Future.delayed(
      Duration(seconds: 1),
      () => DateTime.now().toIso8601String(),
    ).then((value) {
      dateAndTime = value;
      return value;
    });
  }
}

class ApiProvider extends InheritedWidget {
  final Api api;
  late final String uuid;

  ApiProvider({
    Key? key,
    required this.api,
    required Widget child,
  })  : uuid = Uuid().v4(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant ApiProvider oldWidget) {
    // TODO: implement updateShouldNotify
    return uuid != oldWidget.uuid;
    // throw UnimplementedError();
  }
}
