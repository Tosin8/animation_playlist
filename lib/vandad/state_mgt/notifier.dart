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
          title: const Text(
            'Slider Demo',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SliderInheritedNotifer(
          sliderData: sliderData,
          child: Column(
            children: [
              Slider(
                  value: 0.0,
                  onChanged: (value) {
                    sliderData.value = value;
                  }),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Opacity(
                    opacity: SliderInheritedNotifer.of(context),
                    child: Container(
                      color: Colors.yellow,
                      height: 200,
                    ),
                  ),
                  Opacity(
                    opacity: SliderInheritedNotifer.of(context),
                    child: Container(
                      color: Colors.blue,
                      height: 200,
                    ),
                  ),
                ].expandEqually().toList(),
              )
            ],
          ),
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
class SliderData extends ChangeNotifier {
  double _value = 0.0;

  // creating set and getter methods  .
  double get value => _value;
  set value(double newValue) {
    if (newValue != _value) {
      _value = newValue;
      notifyListeners();
    }
  }
}

// creating an instance of inheritedNotifier to hold onto the sliderData.

final sliderData = SliderData();

// creating own inheritedNotifier.
class SliderInheritedNotifer extends InheritedNotifier<SliderData> {
  SliderInheritedNotifer({
    Key? key,
    required SliderData sliderData,
    required Widget child,
  }) : super(key: key, notifier: sliderData, child: child);

// allow easy access to the double value
  static double of(BuildContext context) =>
      context
          .dependOnInheritedWidgetOfExactType<SliderInheritedNotifer>()
          ?.notifier
          ?.value ??
      0.0;
}
