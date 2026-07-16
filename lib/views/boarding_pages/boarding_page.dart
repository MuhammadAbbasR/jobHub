import 'package:flutter/material.dart';
import 'package:job_hub/view_models/boarding_notifier.dart';
import 'package:job_hub/views/boarding_pages/page_one.dart';
import 'package:job_hub/views/boarding_pages/page_three.dart';
import 'package:job_hub/views/boarding_pages/page_two.dart';
import 'package:job_hub/views/main_pages/login_page.dart';
import 'package:job_hub/views/main_pages/main_page.dart';
import 'package:job_hub/widgets/reusable_text.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({super.key});

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<BoardingNotifier>(context);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              Provider.of<BoardingNotifier>(
                context,
                listen: false,
              ).setFInalPage(page);
            },
            physics: AlwaysScrollableScrollPhysics(),
            children: [PageOne(), PageTwo(), PageThree()],
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.12,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                  dotColor: Colors.white,
                  activeDotColor: Colors.red,
                  dotHeight: 12,
                  dotWidth: 12,
                  spacing: 10,
                ),
              ),
            ),
          ),

          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40.0,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    vm.isLastPage
                        ? const SizedBox()
                        : GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const LoginPage(),
                                ),
                              );
                            },
                            child: ReusableText(
                              text: "Skip",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),

                    GestureDetector(
                      onTap: vm.isLastPage
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            }
                          : () {},
                      child: ReusableText(
                        text: "Next",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
