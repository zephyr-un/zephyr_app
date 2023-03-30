import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/service/firestore_service.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Load for 3 secondds
    Future.delayed(Duration(seconds: 3), () async {
      if (FirebaseAuth.instance.currentUser != null) {
        DataBaseService _dataBaseService =
            DataBaseService(uid: FirebaseAuth.instance.currentUser!.uid);
        if ((await _dataBaseService.getUserData()).uid != '') {
          Navigator.pushNamed(context, AppRoutes.homepageTrackingHabitsScreen);
        } else {
          Navigator.pushNamed(context, AppRoutes.introductionmain);
        }
      } else

        // Navigate to home screen
        Navigator.pushNamed(context, AppRoutes.introductionmain);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(size.height * 1.18),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          size == Size(414, 896) ? 896 : 928,
                        ),
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSplashscreen,
                              height: getVerticalSize(
                                size == Size(414, 896) ? 896 : 928,
                              ),
                              width: getHorizontalSize(
                                size == Size(414, 896) ? 896 : 928,
                              ),
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVolume,
                              height: getVerticalSize(
                                93,
                              ),
                              width: getHorizontalSize(
                                90,
                              ),
                              alignment: Alignment.topRight,
                              margin: getMargin(
                                top: 122,
                                right: 56,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup,
                              height: getSize(
                                169,
                              ),
                              width: getSize(
                                169,
                              ),
                              alignment: Alignment.topRight,
                              margin: getMargin(
                                top: 176,
                                right: 62,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMaskgroup161x93,
                      height: getVerticalSize(
                        161,
                      ),
                      width: getHorizontalSize(
                        93,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector165,
                      height: getVerticalSize(
                        175,
                      ),
                      width: getHorizontalSize(
                        254,
                      ),
                      alignment: Alignment.topRight,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: getHorizontalSize(
                          238,
                        ),
                        margin: getMargin(
                          top: 95,
                        ),
                        child: Text(
                          "WELCOME TO\nZEPHYR".toUpperCase(),
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtKlasikRegular40,
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
