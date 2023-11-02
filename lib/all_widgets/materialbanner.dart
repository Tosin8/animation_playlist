// import 'package:flutter/material.dart';

// class BannerM extends StatefulWidget {
//   const BannerM({super.key});

//   @override
//   State<BannerM> createState() => _BannerMState();
// }

// class _BannerMState extends State<BannerM> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Material Banner'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
//                   padding: const EdgeInsets.all(20),
//                   elevation: 5,
//                   backgroundColor: Colors.white12,
//                   content: const Text('Subscribe'),
//                   leading: const Icon(Icons.notifications_active_outlined),
//                   actions: [
//                     TextButton(
//                         onPressed: ScaffoldMessenger.of(context)
//                             .hideCurrentMaterialBanner(),
//                         child: const Text('Dismiss'))
//                   ]));
//             },
//             child: const Text('Open')),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Sydney extends StatelessWidget {
  const Sydney({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 266,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/food2.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff242121),
                Color(0x005b5252),
              ], begin: Alignment(0.01, -1.00), end: Alignment(-0.01, 1))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                child: Column(
                  children: [
                    Text(
                      'SYDNEY',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 80),
                      child: Row(
                        children: [
                          Icon(
                            Icons.fmd_good_outlined,
                            color: Colors.white,
                          ),
                          Text('Sydney , Australia',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              'City of Music',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ])
        ],
      )),
    );
  }
}
