import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zephyr_app/core/app_export.dart';

class IntroductionOneScreen extends StatefulWidget {
  @override
  State<IntroductionOneScreen> createState() => _IntroductionOneScreenState();
}

class _IntroductionOneScreenState extends State<IntroductionOneScreen> {
  @override
  Widget build(BuildContext context) {
    // Smoth
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          // height: double.maxFinite,
          width: double.maxFinite,
          padding: getPadding(
            left: 33,
            right: 33,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getHorizontalSize(
                  295,
                ),
                margin: getMargin(
                  left: 26,
                  right: 26,
                ),
                child: Text(
                  "WELCOME TO ZEPHYR".toUpperCase(),
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtKlasikRegular32,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPastedimage01,
                height: getVerticalSize(
                  487,
                ),
                width: getHorizontalSize(
                  324,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  282,
                ),
                margin: getMargin(
                  left: 32,
                  top: 21,
                  right: 32,
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
