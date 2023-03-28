import '../analytics_screen/widgets/analytics1_item_widget.dart';
import '../analytics_screen/widgets/analytics_item_widget.dart';
import '../analytics_screen/widgets/listday_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_image.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_title.dart';
import 'package:zephyr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:zephyr_app/widgets/custom_button.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';

class AnalyticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.orange50,
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
                title: AppbarTitle(text: "Read A Book"),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(65),
                      width: getHorizontalSize(64),
                      svgPath: ImageConstant.imgEdit,
                      margin: getMargin(left: 17, right: 17))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 15, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: getMargin(left: 20, right: 20),
                                  padding: getPadding(all: 12),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(bottom: 1),
                                            color: ColorConstant.orange30063,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(12))),
                                            child: Container(
                                                height: getSize(75),
                                                width: getSize(75),
                                                padding: getPadding(
                                                    left: 7,
                                                    top: 6,
                                                    right: 7,
                                                    bottom: 6),
                                                decoration: AppDecoration
                                                    .fillOrange30063
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTeepeeswirly,
                                                      height:
                                                          getVerticalSize(63),
                                                      width:
                                                          getHorizontalSize(60),
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20,
                                                top: 6,
                                                right: 125,
                                                bottom: 5),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Read a Book",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold16Gray800),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgNotification,
                                                            height: getSize(15),
                                                            width: getSize(15),
                                                            margin: getMargin(
                                                                bottom: 2)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 9),
                                                            child: Text(
                                                                "Repeat everyday",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium12))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgMaximize,
                                                            height:
                                                                getVerticalSize(
                                                                    13),
                                                            width:
                                                                getHorizontalSize(
                                                                    14),
                                                            margin: getMargin(
                                                                top: 1,
                                                                bottom: 2)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 10),
                                                            child: Text(
                                                                "Reminders: 5:00 am",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium12))
                                                      ]))
                                                ]))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 20, top: 15, right: 20),
                                  padding: getPadding(
                                      left: 4, top: 13, right: 4, bottom: 13),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 5, right: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector,
                                                      height:
                                                          getVerticalSize(10),
                                                      width:
                                                          getHorizontalSize(4),
                                                      margin: getMargin(
                                                          top: 3, bottom: 8)),
                                                  Text("January",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold16Gray800),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVectorGray800,
                                                      height:
                                                          getVerticalSize(10),
                                                      width:
                                                          getHorizontalSize(4),
                                                      margin: getMargin(
                                                          top: 3, bottom: 8))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 14, top: 19, right: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("SUN",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold10),
                                                  Text("MON",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold10),
                                                  Text("TUE",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold10),
                                                  Text("WED",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold10),
                                                  Text("THU",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold10),
                                                  Text("FRI",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold10),
                                                  Text("SAT",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold10)
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 7, right: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: Container(
                                                          margin: getMargin(
                                                              right: 3),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillOrange5001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "1",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeBold14)),
                                                                Container(
                                                                    margin: getMargin(
                                                                        top: 2,
                                                                        right:
                                                                            1),
                                                                    padding:
                                                                        getPadding(
                                                                            all:
                                                                                1),
                                                                    decoration: AppDecoration
                                                                        .fillOrangeA20063
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              height: getSize(34),
                                                                              width: getSize(34),
                                                                              decoration: BoxDecoration(color: ColorConstant.orangeA200, borderRadius: BorderRadius.circular(getHorizontalSize(12))))
                                                                        ]))
                                                              ]))),
                                                  Expanded(
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 3,
                                                              right: 3),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillOrange5001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 1,
                                                                        right:
                                                                            14),
                                                                    child: Text(
                                                                        "2",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeBold14)),
                                                                CustomIconButton(
                                                                    height: 38,
                                                                    width: 38,
                                                                    margin: getMargin(
                                                                        top: 2,
                                                                        right:
                                                                            1),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgEye))
                                                              ]))),
                                                  Expanded(
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 3,
                                                              right: 3),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillOrange5001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 2,
                                                                        right:
                                                                            14),
                                                                    child: Text(
                                                                        "3",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeBold14)),
                                                                Container(
                                                                    margin: getMargin(
                                                                        top: 1,
                                                                        right:
                                                                            1),
                                                                    padding:
                                                                        getPadding(
                                                                            all:
                                                                                1),
                                                                    decoration: AppDecoration
                                                                        .fillOrangeA20063
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              height: getSize(34),
                                                                              width: getSize(34),
                                                                              decoration: BoxDecoration(color: ColorConstant.orangeA200, borderRadius: BorderRadius.circular(getHorizontalSize(12))))
                                                                        ]))
                                                              ]))),
                                                  Expanded(
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 3,
                                                              right: 3),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillOrange5001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 1,
                                                                        right:
                                                                            14),
                                                                    child: Text(
                                                                        "4",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeBold14)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUserOrangeA200,
                                                                    height:
                                                                        getSize(
                                                                            38),
                                                                    width:
                                                                        getSize(
                                                                            38),
                                                                    margin: getMargin(
                                                                        top: 2,
                                                                        right:
                                                                            1))
                                                              ]))),
                                                  Expanded(
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 3,
                                                              right: 3),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillOrange5001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 2,
                                                                        right:
                                                                            14),
                                                                    child: Text(
                                                                        "5",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeBold14)),
                                                                Container(
                                                                    margin: getMargin(
                                                                        top: 1,
                                                                        right:
                                                                            1),
                                                                    padding:
                                                                        getPadding(
                                                                            all:
                                                                                1),
                                                                    decoration: AppDecoration
                                                                        .fillOrangeA20063
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              height: getSize(34),
                                                                              width: getSize(34),
                                                                              decoration: BoxDecoration(color: ColorConstant.orangeA200, borderRadius: BorderRadius.circular(getHorizontalSize(12))))
                                                                        ]))
                                                              ]))),
                                                  Expanded(
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 3,
                                                              right: 3),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillOrange5001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 1,
                                                                        right:
                                                                            14),
                                                                    child: Text(
                                                                        "6",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeBold14)),
                                                                Container(
                                                                    margin: getMargin(
                                                                        top: 2,
                                                                        right:
                                                                            1),
                                                                    padding:
                                                                        getPadding(
                                                                            all:
                                                                                1),
                                                                    decoration: AppDecoration
                                                                        .fillOrangeA20063
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              height: getSize(34),
                                                                              width: getSize(34),
                                                                              decoration: BoxDecoration(color: ColorConstant.orangeA200, borderRadius: BorderRadius.circular(getHorizontalSize(12))))
                                                                        ]))
                                                              ]))),
                                                  Expanded(
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 3),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 5,
                                                              right: 4,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .fillOrange5001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "7",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeBold14)),
                                                                CustomIconButton(
                                                                    height: 38,
                                                                    width: 38,
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                2),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgEye))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 8, right: 1),
                                            child: ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(8));
                                                },
                                                itemCount: 2,
                                                itemBuilder: (context, index) {
                                                  return ListdayItemWidget();
                                                })),
                                        Padding(
                                            padding:
                                                getPadding(left: 1, top: 8),
                                            child: GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent:
                                                            getVerticalSize(73),
                                                        crossAxisCount: 7,
                                                        mainAxisSpacing:
                                                            getHorizontalSize(
                                                                6),
                                                        crossAxisSpacing:
                                                            getHorizontalSize(
                                                                6)),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: 14,
                                                itemBuilder: (context, index) {
                                                  return AnalyticsItemWidget();
                                                }))
                                      ])),
                              Container(
                                  height: getVerticalSize(30),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 17),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                        ColorConstant.deepOrange50,
                                        ColorConstant.orange5001
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Text("Analytics",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtManropeMedium16Gray800871)),
                              Container(
                                  margin:
                                      getMargin(left: 20, top: 24, right: 20),
                                  padding: getPadding(all: 19),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: fs.Svg(
                                              ImageConstant.imgAnalytics),
                                          fit: BoxFit.cover)),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(42));
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Analytics1ItemWidget();
                                      })),
                              CustomButton(
                                  height: getVerticalSize(60),
                                  text: "Mark Habit as Complete",
                                  margin:
                                      getMargin(left: 20, top: 24, right: 20)),
                              CustomButton(
                                  height: getVerticalSize(60),
                                  text: "Mark Habit as Missed",
                                  margin:
                                      getMargin(left: 20, top: 10, right: 20),
                                  variant: ButtonVariant.FillWhiteA700)
                            ])))),
            bottomNavigationBar: Container(
                height: getVerticalSize(127),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgMenuWhiteA70080x414,
                      height: getVerticalSize(80),
                      width: getHorizontalSize(414),
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      svgPath: ImageConstant.imgMapOrangeA200,
                      height: getSize(64),
                      width: getSize(64),
                      alignment: Alignment.topCenter)
                ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
