import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            children: [
              Container(
                  color: Colors.red,
                  child: const Center(
                      child: Text(
                    'Page 1',
                    style: TextStyle(color: Colors.white),
                  ))),
              Container(
                  color: Colors.green,
                  child: const Center(
                      child: Text('Page 2',
                          style: TextStyle(color: Colors.white)))),
              Container(
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    'Page 3',
                    style: TextStyle(color: Colors.white),
                  ))),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 80,
        ),
      ),
    );
  }
}
