import 'package:flutter/material.dart';

class RoughPractice extends StatelessWidget {
  const RoughPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rough Practice'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              const ListTile(title: Text('First Item')),
              const ListTile(title: Text('Second Item')),
              const ListTile(title: Text('Third Item')),
              const ListTile(title: Text('Fourth Item')),
              const ListTile(title: Text('First Item')),
              const ListTile(title: Text('Second Item')),
              const ListTile(title: Text('Third Item')),
              const ListTile(title: Text('Fourth Item')),
              const ListTile(title: Text('First Item')),
              const ListTile(title: Text('Second Item')),
              const ListTile(title: Text('Third Item')),
              const ListTile(title: Text('Fourth Item')),
            ])),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                  color: Colors.yellowAccent,
                  child: const Column(
                    children: [
                      FlutterLogo(size: 100),
                      SizedBox(height: 20),
                      Text(
                        'This is the flutter logo',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
