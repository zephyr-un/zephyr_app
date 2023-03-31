import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/presentation/settings_page/settings_page.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_image.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_title.dart';
import 'package:zephyr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:zephyr_app/widgets/custom_bottom_bar.dart';
import 'package:zephyr_app/widgets/custom_drop_down.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';
import 'package:zephyr_app/widgets/custom_text_form_field.dart';

import '../../widgets/custom_button.dart';
import '../settings_page/widgets/settings_item_widget.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileDashboardScreen extends StatelessWidget {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController settingOneController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.orange50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(93),
                leadingWidth: 74,
                leading: AppbarImage(
                    height: getVerticalSize(65),
                    width: getHorizontalSize(64),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 10),
                    onTap: () => onTapArrowleft1(context)),
                centerTitle: true,
                title: AppbarTitle(text: "Profile"),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(65),
                      width: getHorizontalSize(64),
                      svgPath: ImageConstant.imgEdit,
                      margin: getMargin(left: 17, right: 17))
                ]),
            body: SingleChildScrollView(
              child: Container(
                  height: size.height,
                  width: double.maxFinite,
                  padding: getPadding(left: 20, right: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(top: 32),
                                padding: getPadding(
                                    left: 15, top: 12, right: 15, bottom: 12),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgGroup7),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgPastedimage0160x60,
                                                url: FirebaseAuth.instance
                                                    .currentUser!.photoURL,
                                                height: getSize(60),
                                                width: getSize(60),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(30))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 12,
                                                    bottom: 11),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          FirebaseAuth
                                                                  .instance
                                                                  .currentUser!
                                                                  .displayName ??
                                                              "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeBold16),
                                                      Text("Name",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeMedium12)
                                                    ])),
                                            CustomDropDown(
                                                width: getHorizontalSize(110),
                                                focusNode: FocusNode(),
                                                icon: Container(
                                                    margin: getMargin(
                                                        left: 16, right: 12),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .gray800,
                                                            width:
                                                                getHorizontalSize(
                                                                    2),
                                                            strokeAlign:
                                                                strokeAlignCenter)),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowdown)),
                                                hintText: "This week",
                                                margin: getMargin(
                                                    left: 46,
                                                    top: 9,
                                                    bottom: 18),
                                                items: dropdownItemList,
                                                onChanged: (value) {})
                                          ]),
                                    ]))),
                        Container(
                            margin: getMargin(top: 8),
                            padding: getPadding(all: 6),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.FillOrange30063,
                                  padding: IconButtonPadding.PaddingAll9,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGroup3)),
                              Padding(
                                  padding:
                                      getPadding(left: 14, top: 10, bottom: 5),
                                  child: Text("Longest Streak",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeMedium16)),
                              Spacer(),
                              Padding(
                                  padding: getPadding(top: 10, bottom: 5),
                                  child: Text("3 Days",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold16Gray800)),
                            ])),
                        // Spacer(),
                        // CustomImageView(
                        //     svgPath: ImageConstant.imgMapOrangeA200,
                        //     height: getSize(64),
                        //     width: getSize(64)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 14,
                                ),
                                child: Text(
                                  "General",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManropeMedium16,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 16,
                                ),
                                child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        8,
                                      ),
                                    );
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return SettingsItemWidget();
                                  },
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                ),
                                child: Text(
                                  "Support",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManropeMedium16,
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                // controller: settingSevenController,
                                hintText: "Contact",
                                margin: getMargin(
                                  top: 14,
                                ),
                                prefix: Container(
                                  padding: getPadding(
                                    all: 10,
                                  ),
                                  margin: getMargin(
                                    left: 6,
                                    top: 6,
                                    right: 14,
                                    bottom: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.orange30063,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgFloatingicon,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                                suffix: Container(
                                  margin: getMargin(
                                    left: 30,
                                    top: 20,
                                    right: 20,
                                    bottom: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorConstant.gray800,
                                      width: getHorizontalSize(
                                        2,
                                      ),
                                      strokeAlign: strokeAlignCenter,
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgVectorGray800,
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                // controller: settingTenController,
                                hintText: "Feedback",
                                margin: getMargin(
                                  top: 8,
                                ),
                                prefix: Container(
                                  padding: getPadding(
                                    all: 10,
                                  ),
                                  margin: getMargin(
                                    left: 6,
                                    top: 6,
                                    right: 14,
                                    bottom: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.orange30063,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgMenuOrange30001,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                                suffix: Container(
                                  margin: getMargin(
                                    left: 30,
                                    top: 20,
                                    right: 20,
                                    bottom: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorConstant.gray800,
                                      width: getHorizontalSize(
                                        2,
                                      ),
                                      strokeAlign: strokeAlignCenter,
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgVectorGray800,
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                // controller: settingElevenController,
                                hintText: "Privacy Policy",
                                margin: getMargin(
                                  top: 8,
                                ),
                                prefix: Container(
                                  padding: getPadding(
                                    all: 10,
                                  ),
                                  margin: getMargin(
                                    left: 6,
                                    top: 6,
                                    right: 14,
                                    bottom: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.orange30063,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgOffer,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                                suffix: Container(
                                  margin: getMargin(
                                    left: 30,
                                    top: 20,
                                    right: 20,
                                    bottom: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorConstant.gray800,
                                      width: getHorizontalSize(
                                        2,
                                      ),
                                      strokeAlign: strokeAlignCenter,
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgVectorGray800,
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                // controller: settingTwelveController,
                                hintText: "About",
                                margin: getMargin(
                                  top: 8,
                                ),
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                  padding: getPadding(
                                    all: 11,
                                  ),
                                  margin: getMargin(
                                    left: 6,
                                    top: 6,
                                    right: 14,
                                    bottom: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.orange30063,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgWarning,
                                  ),
                                ),
                                prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                                suffix: Container(
                                  margin: getMargin(
                                    left: 30,
                                    top: 20,
                                    right: 20,
                                    bottom: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorConstant.gray800,
                                      width: getHorizontalSize(
                                        2,
                                      ),
                                      strokeAlign: strokeAlignCenter,
                                    ),
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgVectorGray800,
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            top: 32,
                          ),
                          color: ColorConstant.whiteA700,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12,
                              ),
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              146,
                            ),
                            width: getHorizontalSize(
                              374,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgPastedimage01146x222,
                                  height: getVerticalSize(
                                    146,
                                  ),
                                  width: getHorizontalSize(
                                    222,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12,
                                    ),
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 33,
                                      top: 19,
                                    ),
                                    child: Text(
                                      "Check Your Profile",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold20,
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    40,
                                  ),
                                  width: getHorizontalSize(
                                    120,
                                  ),
                                  text: "View",
                                  margin: getMargin(
                                    left: 29,
                                    bottom: 20,
                                  ),
                                  padding: ButtonPadding.PaddingAll10,
                                  fontStyle: ButtonFontStyle.ManropeBold14,
                                  alignment: Alignment.bottomLeft,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 32,
                                      top: 50,
                                    ),
                                    child: Text(
                                      FirebaseAuth.instance.currentUser!.email!,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeMedium12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ])),
            ),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Xmlid195:
        return AppRoutes.settingsPage;
      case BottomBarEnum.Xmlid98:
        return "/";
      case BottomBarEnum.Xmlid95:
        return "/";
      case BottomBarEnum.Xmlid196:
        return "/";
      case BottomBarEnum.Coursesyellow900:
        return "/";
      case BottomBarEnum.Community:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.settingsPage:
        return SettingsPage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
