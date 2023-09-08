import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CounterTimer extends StatelessWidget {
  //const CounterTimer({super.key});

  int counter = 0;

  void incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Counter Timer',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times: '),
            Text(
              '$counter',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => incrementCounter(context),
          tooltip: 'Increments',
          child: Icon(Icons.add)),
    );
  }
}

class Counter extends ChangeNotifier {
  var count = 0;
  int get getCounter {
    return count;
  }

  void incrementCounter() {
    count++;
    notifyListeners();
  }
}
