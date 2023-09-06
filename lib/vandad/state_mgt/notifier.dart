import 'package:flutter/material.dart';

class DemoNotify extends StatefulWidget {
  const DemoNotify({super.key});

  @override
  State<DemoNotify> createState() => _DemoNotifyState();
}

class _DemoNotifyState extends State<DemoNotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Slider Demo',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Slider(value: 0.0, onChanged: (value) {}),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  height: 200,
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                ),
              ].expandEqually().toList(),
            )
          ],
        ));
  }
}

// creating an extension method to fixing the widths of the containers.
extension EqualEqually on Iterable<Widget> {
  Iterable<Widget> expandEqually() => map(
        (w) => Expanded(
          child: w,
        ),
      );
}

// creating the state manager.
class SliderData extends ChangeNotifier {}
