import 'package:flutter/material.dart';

class BannerM extends StatefulWidget {
  const BannerM({super.key});

  @override
  State<BannerM> createState() => _BannerMState();
}

class _BannerMState extends State<BannerM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Banner'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                  padding: const EdgeInsets.all(20),
                  elevation: 5,
                  backgroundColor: Colors.white12,
                  content: Text('Subscribe'),
                  leading: const Icon(Icons.notifications_active_outlined),
                  actions: actions));
            },
            child: Text('Open')),
      ),
    );
  }
}
