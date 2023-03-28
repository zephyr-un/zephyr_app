import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  var selection = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 59,
            top: 41,
            right: 59,
            bottom: 41,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 53,
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
                  192,
                ),
                width: getHorizontalSize(
                  273,
                ),
                margin: getMargin(
                  top: 43,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selection = 0;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCartwocolor1,
                        height: getVerticalSize(
                          159,
                        ),
                        width: getHorizontalSize(
                          257,
                        ),
                        alignment: Alignment.centerLeft,
                        margin: getMargin(
                          left: 3,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            200,
                          ),
                          width: getHorizontalSize(
                            300,
                          ),
                          padding: getPadding(
                            left: 112,
                            top: 7,
                            right: 112,
                            bottom: 7,
                          ),
                          decoration: selection == 0
                              ? AppDecoration.fillOrange2004f.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                )
                              : AppDecoration.fillOrange20019.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
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
                    ],
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  192,
                ),
                width: getHorizontalSize(
                  273,
                ),
                margin: getMargin(
                  top: 62,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selection = 1;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
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
                          left: 42,
                          top: 5,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(200),
                          width: getHorizontalSize(300),
                          padding: getPadding(
                            left: 103,
                            top: 5,
                            right: 103,
                            bottom: 5,
                          ),
                          decoration: selection == 1
                              ? AppDecoration.fillOrange2004f.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                )
                              : AppDecoration.fillOrange20019.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
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
                    ],
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  200,
                ),
                width: getHorizontalSize(
                  273,
                ),
                margin: getMargin(
                  top: 41,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selection = 2;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            200,
                          ),
                          width: getHorizontalSize(
                            300,
                          ),
                          padding: getPadding(
                            left: 51,
                            top: 27,
                            right: 51,
                            bottom: 27,
                          ),
                          decoration: selection == 2
                              ? AppDecoration.fillOrange2004f.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                )
                              : AppDecoration.fillOrange20019.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
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
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: getPadding(
                            right: 80,
                          ),
                          child: Text(
                            "BICYCLE".toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
