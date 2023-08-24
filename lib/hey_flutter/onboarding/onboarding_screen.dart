import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_home.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();
  bool isLastPage = false;
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
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
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
        bottomSheet: isLastPage
            ? TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    primary: Colors.white,
                    backgroundColor: Colors.teal.shade700,
                    minimumSize: const Size.fromHeight(80)),
                onPressed: () async {
                  // navigating directly to the home page, after user first attempts to skip the onboarding page.
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('showHome', true);
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const OnboardHome()));
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 24),
                ))
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: const Text('SKIP'),
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
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                    )),
                    TextButton(
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: const Text(
                          'NEXT',
                        ))
                  ],
                ),
              ),
      ),
    );
  }
}
