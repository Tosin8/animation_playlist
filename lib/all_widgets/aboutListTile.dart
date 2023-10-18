import 'package:flutter/material.dart';

class aboutListTile extends StatefulWidget {
  const aboutListTile({super.key});

  @override
  State<aboutListTile> createState() => _aboutListTileState();
}

class _aboutListTileState extends State<aboutListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About List Tile'),
        ),
        body: const Center(
          child: AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationLegalese: 'Legalese',
            applicationName: 'Flutter App',
            applicationVersion: 'version 1.0.0',
            aboutBoxChildren: [Text('This is a text created by')],
          ),
        ));
  }
}
