import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zephyr_app/presentation/introduction_four_screen/introduction_four_screen.dart';
import 'package:zephyr_app/presentation/introduction_one_screen/introduction_one_screen.dart';
import 'package:zephyr_app/presentation/introduction_two_screen/introduction_two_screen.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../introduction_three_screen/introduction_three_screen.dart';

class IntroductionScreenMain extends StatefulWidget {
  const IntroductionScreenMain({super.key});

  @override
  State<IntroductionScreenMain> createState() => _IntroductionScreenMainState();
}

class _IntroductionScreenMainState extends State<IntroductionScreenMain> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  IntroductionOneScreen(),
                  IntroductionTwoScreen(),
                  IntroductionThreeScreen(),
                  IntroductionFourScreen(),
                ],
              ),
            ),
            Container(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ScrollingDotsEffect(
                  spacing: 9,
                  activeDotColor: ColorConstant.gray800,
                  dotColor: ColorConstant.orange300,
                  dotHeight: getVerticalSize(
                    11,
                  ),
                  dotWidth: getHorizontalSize(
                    11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
