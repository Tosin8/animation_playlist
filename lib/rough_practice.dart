import 'package:flutter/material.dart';

class RoughPractice extends StatelessWidget {
  const RoughPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rough Practice'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              ListTile(title: Text('First Item')),
              ListTile(title: Text('Second Item')),
              ListTile(title: Text('Third Item')),
              ListTile(title: Text('Fourth Item')),
            ])),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                  color: Colors.yellowAccent,
                  child: Column(
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
