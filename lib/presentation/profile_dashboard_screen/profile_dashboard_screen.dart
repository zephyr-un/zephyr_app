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
            body: Container(
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
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Marilyn Aminoff",
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
                                                  left: 46, top: 9, bottom: 18),
                                              items: dropdownItemList,
                                              onChanged: (value) {})
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 27),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Total Work Hours",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtManropeMedium12Gray800871),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text("18",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtKlasikRegular24))
                                                  ]),
                                              CustomIconButton(
                                                  height: 40,
                                                  width: 40,
                                                  margin: getMargin(
                                                      left: 25, bottom: 1),
                                                  variant: IconButtonVariant
                                                      .FillOrange30063,
                                                  shape: IconButtonShape
                                                      .CircleBorder19,
                                                  padding: IconButtonPadding
                                                      .PaddingAll9,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgClock)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32, top: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Task Completed",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManropeMedium12Gray800871),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text("12",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtKlasikRegular24))
                                                      ])),
                                              CustomIconButton(
                                                  height: 40,
                                                  width: 40,
                                                  margin: getMargin(
                                                      left: 29, bottom: 1),
                                                  variant: IconButtonVariant
                                                      .FillIndigo80063,
                                                  shape: IconButtonShape
                                                      .CircleBorder19,
                                                  padding: IconButtonPadding
                                                      .PaddingAll9,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMegaphone))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 33, bottom: 2),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height: getSize(42),
                                                            width: getSize(42),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "7",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtManropeMedium14Gray800)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Card(
                                                                          clipBehavior: Clip.antiAlias,
                                                                          elevation: 0,
                                                                          margin: EdgeInsets.all(0),
                                                                          shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray80063, width: getHorizontalSize(3)), borderRadius: BorderRadius.circular(getHorizontalSize(21))),
                                                                          child: Container(
                                                                              height: getSize(42),
                                                                              width: getSize(42),
                                                                              padding: getPadding(all: 1),
                                                                              decoration: AppDecoration.outlineGray80063.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                                                                              child: Stack(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgEllipse856, height: getVerticalSize(40), width: getHorizontalSize(20), alignment: Alignment.centerRight)
                                                                              ]))))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text("06/14",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium10))
                                                      ])),
                                              Container(
                                                  height: getSize(42),
                                                  width: getSize(42),
                                                  margin: getMargin(bottom: 27),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text("0",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium14Red400)),
                                                        CustomIconButton(
                                                            height: 42,
                                                            width: 42,
                                                            variant:
                                                                IconButtonVariant
                                                                    .OutlineRed40063,
                                                            shape: IconButtonShape
                                                                .CircleBorder19,
                                                            alignment: Alignment
                                                                .center,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup10046))
                                                      ])),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height: getSize(42),
                                                            width: getSize(42),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Card(
                                                                          clipBehavior: Clip.antiAlias,
                                                                          elevation: 0,
                                                                          margin: EdgeInsets.all(0),
                                                                          shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray80063, width: getHorizontalSize(3)), borderRadius: BorderRadius.circular(getHorizontalSize(21))),
                                                                          child: Container(
                                                                              height: getSize(42),
                                                                              width: getSize(42),
                                                                              padding: getPadding(all: 1),
                                                                              decoration: AppDecoration.outlineGray80063.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                                                                              child: Stack(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgEllipse856, height: getVerticalSize(40), width: getHorizontalSize(20), alignment: Alignment.centerRight)
                                                                              ])))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "6",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtManropeMedium14Gray800))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text("06/15",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium10))
                                                      ])),
                                              Container(
                                                  height: getSize(42),
                                                  width: getSize(42),
                                                  margin: getMargin(bottom: 27),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 42,
                                                            width: 42,
                                                            variant:
                                                                IconButtonVariant
                                                                    .OutlineGray80063,
                                                            shape: IconButtonShape
                                                                .CircleBorder19,
                                                            alignment: Alignment
                                                                .center,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgEllipse856)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text("5",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium14Gray800))
                                                      ])),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height: getSize(42),
                                                            width: getSize(42),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomIconButton(
                                                                      height:
                                                                          42,
                                                                      width: 42,
                                                                      variant:
                                                                          IconButtonVariant
                                                                              .OutlineGray80063,
                                                                      shape: IconButtonShape
                                                                          .CircleBorder19,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgEllipse856)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "4",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtManropeMedium14Gray800))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text("06/16",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium10))
                                                      ])),
                                              Container(
                                                  height: getSize(42),
                                                  width: getSize(42),
                                                  margin: getMargin(bottom: 27),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        color: ColorConstant
                                                                            .gray80063,
                                                                        width: getHorizontalSize(
                                                                            3)),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(21))),
                                                                child: Container(
                                                                    height: getSize(42),
                                                                    width: getSize(42),
                                                                    padding: getPadding(all: 1),
                                                                    decoration: AppDecoration.outlineGray80063.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                                                                    child: Stack(children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgRefresh,
                                                                          height: getSize(
                                                                              40),
                                                                          width: getSize(
                                                                              40),
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ])))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text("9",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium14Gray800))
                                                      ])),
                                              Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getSize(42),
                                                        width: getSize(42),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Card(
                                                                      clipBehavior:
                                                                          Clip
                                                                              .antiAlias,
                                                                      elevation:
                                                                          0,
                                                                      margin: EdgeInsets
                                                                          .all(
                                                                              0),
                                                                      shape: RoundedRectangleBorder(
                                                                          side: BorderSide(
                                                                              color: ColorConstant.orange30063,
                                                                              width: getHorizontalSize(3)),
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(21))),
                                                                      child: Container(
                                                                          height: getSize(42),
                                                                          width: getSize(42),
                                                                          padding: getPadding(all: 1),
                                                                          decoration: AppDecoration.outlineOrange30063.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                                                                          child: Stack(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgEllipse852,
                                                                                height: getVerticalSize(40),
                                                                                width: getHorizontalSize(20),
                                                                                alignment: Alignment.centerRight)
                                                                          ])))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "10",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtManropeMedium14Orange30001))
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 13),
                                                        child: Text("Today",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManropeMedium10))
                                                  ])
                                            ]))
                                  ]))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: settingOneController,
                          hintText: "Billing methods",
                          margin: getMargin(top: 8),
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              padding: getPadding(
                                  left: 9, top: 12, right: 9, bottom: 12),
                              margin: getMargin(
                                  left: 6, top: 6, right: 14, bottom: 6),
                              decoration: BoxDecoration(
                                  color: ColorConstant.orange30063,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(12))),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgComputer)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 20, bottom: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.gray800,
                                      width: getHorizontalSize(2),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgVectorGray800)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50))),
                      Container(
                          margin: getMargin(top: 8),
                          padding: getPadding(all: 6),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
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
                                child: Text("20 Days",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeBold16Gray800)),
                            CustomImageView(
                                svgPath: ImageConstant.imgVectorGray800,
                                height: getVerticalSize(10),
                                width: getHorizontalSize(4),
                                margin: getMargin(
                                    left: 10, top: 14, right: 14, bottom: 14))
                          ])),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgMapOrangeA200,
                          height: getSize(64),
                          width: getSize(64))
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

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
