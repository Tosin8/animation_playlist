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
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                  padding: const EdgeInsets.all(20),
                  elevation: 5,
                  backgroundColor: Colors.white12,
                  content: const Text('Subscribe'),
                  leading: const Icon(Icons.notifications_active_outlined),
                  actions: [
                    TextButton(
                        onPressed: ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner(),
                        child: const Text('Dismiss'))
                  ]));
            },
            child: const Text('Open')),
      ),
    );
  }
}
