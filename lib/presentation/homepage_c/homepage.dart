import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/presentation/settings_page/settings_page.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_image.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_title.dart';
import 'package:zephyr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:zephyr_app/widgets/custom_bottom_bar.dart';
import 'package:zephyr_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageNewHabitScreen extends StatelessWidget {
  TextEditingController vehicleController = TextEditingController();

  TextEditingController enterlocationController = TextEditingController();

  TextEditingController enterlocationOneController = TextEditingController();

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
                    onTap: () => onTapArrowleft(context)),
                centerTitle: true,
                title: AppbarTitle(text: "Calculate Trip Emissions")),
            body: Container(
                height: getVerticalSize(723),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: getVerticalSize(76),
                                width: getHorizontalSize(117),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(ImageConstant.imgCloud),
                                        fit: BoxFit.cover)),
                                child: Stack(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMaskgroup76x117,
                                      height: getVerticalSize(76),
                                      width: getHorizontalSize(117),
                                      alignment: Alignment.center)
                                ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: getVerticalSize(59),
                                    width: getHorizontalSize(105),
                                    margin: getMargin(top: 72),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgShapes,
                                              height: getVerticalSize(58),
                                              width: getHorizontalSize(105),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskgroup58x104,
                                              height: getVerticalSize(58),
                                              width: getHorizontalSize(104),
                                              alignment: Alignment.center)
                                        ]))),
                            Container(
                                height: getVerticalSize(35),
                                width: getHorizontalSize(69),
                                margin: getMargin(top: 75, right: 42),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgShapesOrange100,
                                          height: getVerticalSize(34),
                                          width: getHorizontalSize(69),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMaskgroup34x68,
                                          height: getVerticalSize(34),
                                          width: getHorizontalSize(68),
                                          alignment: Alignment.center)
                                    ])),
                            Container(
                                width: double.maxFinite,
                                child: Container(
                                    margin: getMargin(top: 58),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgGroup262),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: double.maxFinite,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup263),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMaskgroup166x414,
                                                            height:
                                                                getVerticalSize(
                                                                    166),
                                                            width:
                                                                getHorizontalSize(
                                                                    414))
                                                      ])))
                                        ])))
                          ])),
                  CustomImageView(
                      svgPath: ImageConstant.imgInfo,
                      height: getSize(64),
                      width: getSize(64),
                      alignment: Alignment.bottomCenter),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(
                              left: 20, top: 38, right: 20, bottom: 93),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: vehicleController,
                                    hintText: "Vehicle",
                                    padding: TextFormFieldPadding.PaddingT55,
                                    maxLines: 6),
                                Container(
                                    margin: getMargin(top: 8),
                                    padding: getPadding(
                                        left: 20,
                                        top: 11,
                                        right: 20,
                                        bottom: 11),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("Origin",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtManropeMedium16)),
                                      Expanded(
                                          child: CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  enterlocationController,
                                              hintText: "Enter Location",
                                              margin: getMargin(
                                                  left: 12, top: 2, bottom: 1),
                                              variant:
                                                  TextFormFieldVariant.None,
                                              fontStyle: TextFormFieldFontStyle
                                                  .ManropeBold16Orange30001))
                                    ])),
                                Container(
                                    margin: getMargin(top: 11),
                                    padding: getPadding(
                                        left: 20,
                                        top: 12,
                                        right: 20,
                                        bottom: 12),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 1),
                                          child: Text("Destination",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtManropeMedium16)),
                                      CustomTextFormField(
                                          width: getHorizontalSize(222),
                                          focusNode: FocusNode(),
                                          controller:
                                              enterlocationOneController,
                                          hintText: "Enter Location",
                                          margin:
                                              getMargin(left: 12, bottom: 3),
                                          variant: TextFormFieldVariant.None,
                                          fontStyle: TextFormFieldFontStyle
                                              .ManropeBold16Orange30001,
                                          textInputAction: TextInputAction.done)
                                    ])),
                                Spacer(),
                                Container(
                                    height: getVerticalSize(217),
                                    width: getHorizontalSize(374),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 98,
                                                      top: 20,
                                                      right: 98,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 31),
                                                            child: Text(
                                                                "Start this TRIP"
                                                                    .toUpperCase(),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular24)),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTicket,
                                                            height:
                                                                getVerticalSize(
                                                                    25),
                                                            width:
                                                                getHorizontalSize(
                                                                    19),
                                                            margin: getMargin(
                                                                top: 54))
                                                      ]))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgPastedimage0170x70,
                                              height: getSize(70),
                                              width: getSize(70),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(35)),
                                              alignment: Alignment.topCenter)
                                        ]))
                              ])))
                ])),
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

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
