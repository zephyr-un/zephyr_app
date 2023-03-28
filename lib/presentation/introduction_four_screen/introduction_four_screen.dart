import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_button.dart';

class IntroductionFourScreen extends StatelessWidget {
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
                  267,
                ),
                child: Text(
                  "JOIN A SUPPORTIVE\r\nCOMMUNITY".toUpperCase(),
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtKlasikRegular32,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgCommunitysupport,
                height: getVerticalSize(
                  309,
                ),
                width: getHorizontalSize(
                  414,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  282,
                ),
                margin: getMargin(
                  top: 96,
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
              CustomButton(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.loginPageScreen,
                ),
                height: getVerticalSize(
                  60,
                ),
                text: "Get Started",
                margin: getMargin(
                  left: 20,
                  top: 48,
                  right: 20,
                  bottom: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
