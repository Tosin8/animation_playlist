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
                delegate: SliverChildListDelegate(
                    [ListTile(title: Text('First Item'))]))
          ],
        ));
  }
}
