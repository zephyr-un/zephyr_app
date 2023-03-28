import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zephyr_app/core/app_export.dart';

class IntroductionTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 7,
            right: 7,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getHorizontalSize(
                  181,
                ),
                child: Text(
                  "CREATE NEW HABIT EASILY".toUpperCase(),
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtKlasikRegular32,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgHabits,
                height: getSize(
                  399,
                ),
                width: getSize(
                  399,
                ),
                margin: getMargin(
                  top: 42,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  282,
                ),
                margin: getMargin(
                  left: 58,
                  top: 67,
                  right: 58,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "We can ".toUpperCase(),
                        style: TextStyle(
                          color: ColorConstant.gray800,
                          fontSize: getFontSize(
                            17,
                          ),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "help you".toUpperCase(),
                        style: TextStyle(
                          color: ColorConstant.orangeA200,
                          fontSize: getFontSize(
                            17,
                          ),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: " to be a better version of ".toUpperCase(),
                        style: TextStyle(
                          color: ColorConstant.gray800,
                          fontSize: getFontSize(
                            17,
                          ),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "yourself.".toUpperCase(),
                        style: TextStyle(
                          color: ColorConstant.orangeA200,
                          fontSize: getFontSize(
                            17,
                          ),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
