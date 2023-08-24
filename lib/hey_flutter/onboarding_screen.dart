import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text('SKIP'),
                onPressed: () => controller.jumpToPage(2),
              ),
              Center(
                  child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  spacing: 16,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.teal.shade700,
                ),
              )),
              TextButton(onPressed: () {}, child: Text('NEXT'))
            ],
          ),
        ),
      ),
    );
  }
}
