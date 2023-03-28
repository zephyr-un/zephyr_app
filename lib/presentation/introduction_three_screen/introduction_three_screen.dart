import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zephyr_app/core/app_export.dart';

class IntroductionThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getHorizontalSize(
                  292,
                ),
                margin: getMargin(
                  left: 61,
                  right: 60,
                ),
                child: Text(
                  "KEEP TRACK OF YOUR PROGRESS".toUpperCase(),
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtKlasikRegular32,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgProgress1,
                height: getVerticalSize(
                  408,
                ),
                width: getHorizontalSize(
                  414,
                ),
                margin: getMargin(
                  top: 52,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  282,
                ),
                margin: getMargin(
                  top: 48,
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
