import 'package:flutter/material.dart';

class aboutDialog extends StatefulWidget {
  const aboutDialog({super.key});

  @override
  State<aboutDialog> createState() => _aboutDialogState();
}

class _aboutDialogState extends State<aboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('About Dialog'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => const AboutDialog(
                          applicationIcon: FlutterLogo(),
                          applicationLegalese: 'Legalese',
                          applicationName: 'Flutter App',
                          applicationVersion: 'version 1.0.0',
                          children: [
                            Text('This is a text created by flutter Mapp')
                          ],
                        ));
              },
              child: const Text('About App')),
        ));
  }
}
