import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_button.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 94,
                ),
                child: Text(
                  "How do you get around?".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular24,
                ),
              ),
              Container(
                height: getVerticalSize(
                  729,
                ),
                width: getHorizontalSize(
                  374,
                ),
                margin: getMargin(
                  top: 43,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLayer1,
                      height: getVerticalSize(
                        153,
                      ),
                      width: getHorizontalSize(
                        167,
                      ),
                      alignment: Alignment.topLeft,
                      margin: getMargin(
                        left: 94,
                        top: 259,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCartwocolor1,
                      height: getVerticalSize(
                        159,
                      ),
                      width: getHorizontalSize(
                        257,
                      ),
                      alignment: Alignment.topCenter,
                      margin: getMargin(
                        top: 17,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: getMargin(
                          left: 57,
                          right: 44,
                        ),
                        padding: getPadding(
                          left: 112,
                          top: 7,
                          right: 112,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.fillOrange2004f.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 153,
                              ),
                              child: Text(
                                "CAR".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: getMargin(
                          left: 52,
                          top: 254,
                          right: 49,
                        ),
                        padding: getPadding(
                          left: 103,
                          top: 5,
                          right: 103,
                          bottom: 5,
                        ),
                        decoration: AppDecoration.fillOrange20019.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 157,
                              ),
                              child: Text(
                                "bUS".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          bottom: 50,
                        ),
                        color: ColorConstant.orange20019,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20,
                            ),
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            192,
                          ),
                          width: getHorizontalSize(
                            273,
                          ),
                          padding: getPadding(
                            left: 51,
                            top: 27,
                            right: 51,
                            bottom: 27,
                          ),
                          decoration: AppDecoration.fillOrange20019.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.img333bicycleflatline,
                                height: getVerticalSize(
                                  133,
                                ),
                                width: getHorizontalSize(
                                  153,
                                ),
                                alignment: Alignment.topRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: getPadding(
                          right: 123,
                          bottom: 41,
                        ),
                        child: Text(
                          "BICYCLE".toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular20,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: getPadding(
                          left: 12,
                          right: 12,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getVerticalSize(
                                369,
                              ),
                              width: getHorizontalSize(
                                331,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: getVerticalSize(
                                            315,
                                          ),
                                          width: getHorizontalSize(
                                            312,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgTeepeeswirly,
                                                height: getSize(
                                                  312,
                                                ),
                                                width: getSize(
                                                  312,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "Congratulations!"
                                                      .toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular24,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            245,
                                          ),
                                          margin: getMargin(
                                            top: 6,
                                          ),
                                          child: Text(
                                            "You’re one step ahead to build your carbon footprint ",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtManropeMedium16Gray80087,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomIconButton(
                                    height: 32,
                                    width: 32,
                                    margin: getMargin(
                                      top: 12,
                                    ),
                                    variant: IconButtonVariant.FillGray80063,
                                    shape: IconButtonShape.CircleBorder16,
                                    padding: IconButtonPadding.PaddingAll9,
                                    alignment: Alignment.topRight,
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                60,
                              ),
                              text: "Continue",
                              margin: getMargin(
                                left: 8,
                                top: 96,
                                right: 8,
                                bottom: 20,
                              ),
                              variant: ButtonVariant.FillOrange5001,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
