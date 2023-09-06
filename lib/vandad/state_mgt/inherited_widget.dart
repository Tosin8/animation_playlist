import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  ValueKey _textKey = const ValueKey<String?>(null);
  //String title = 'Tap the Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            ApiProvider.of(context).api.dateAndTime ?? '',
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                final api = ApiProvider.of(context).api;
                final dateAndTime = await api.dateAndTime!;
                setState(() {
                  _textKey = ValueKey(dateAndTime);
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

// when will the inheritedWidget be replaced..
  @override
  bool updateShouldNotify(covariant ApiProvider oldWidget) {
    // TODO: implement updateShouldNotify
    return uuid != oldWidget.uuid;
    // throw UnimplementedError();
  }

  // a way for dependents to get an instance.
  static ApiProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ApiProvider>()!;
  }
}

// create datetimewidget to extends statelesswidget.

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final api = ApiProvider.of(context).api;
    return Text(api.dateAndTime ?? 'Tap on Screen to fetch date and time');
  }
}
