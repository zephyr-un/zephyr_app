import '../homepage_tracking_habits_screen/widgets/listreadabook_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_image.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_title.dart';
import 'package:zephyr_app/widgets/app_bar/custom_app_bar.dart';

class HomepageTrackingHabitsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            93,
          ),
          leadingWidth: 74,
          leading: AppbarImage(
            height: getVerticalSize(
              65,
            ),
            width: getHorizontalSize(
              64,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 10,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Homepage",
          ),
          actions: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: getSize(
                44,
              ),
              width: getSize(
                44,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  22,
                ),
              ),
              margin: getMargin(
                left: 27,
                top: 11,
                right: 27,
                bottom: 10,
              ),
            ),
          ],
        ),
        body: Container(
          height: getVerticalSize(
            803,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    bottom: 22,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          76,
                        ),
                        width: getHorizontalSize(
                          117,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgCloud,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup76x117,
                              height: getVerticalSize(
                                76,
                              ),
                              width: getHorizontalSize(
                                117,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            59,
                          ),
                          width: getHorizontalSize(
                            105,
                          ),
                          margin: getMargin(
                            top: 72,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgShapes,
                                height: getVerticalSize(
                                  58,
                                ),
                                width: getHorizontalSize(
                                  105,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMaskgroup58x104,
                                height: getVerticalSize(
                                  58,
                                ),
                                width: getHorizontalSize(
                                  104,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          35,
                        ),
                        width: getHorizontalSize(
                          69,
                        ),
                        margin: getMargin(
                          top: 75,
                          right: 42,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgUnion,
                              height: getVerticalSize(
                                34,
                              ),
                              width: getHorizontalSize(
                                69,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup34x68,
                              height: getVerticalSize(
                                34,
                              ),
                              width: getHorizontalSize(
                                68,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(
                            top: 58,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup10,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: double.maxFinite,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgGroup11,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMaskgroup166x414,
                                        height: getVerticalSize(
                                          166,
                                        ),
                                        width: getHorizontalSize(
                                          414,
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
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMenuWhiteA700,
                height: getVerticalSize(
                  124,
                ),
                width: getHorizontalSize(
                  414,
                ),
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 14,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
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
                                    ImageConstant.imgPastedimage01146x204,
                                height: getVerticalSize(
                                  146,
                                ),
                                width: getHorizontalSize(
                                  204,
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
                                child: Container(
                                  width: getHorizontalSize(
                                    220,
                                  ),
                                  margin: getMargin(
                                    left: 15,
                                    top: 27,
                                  ),
                                  child: Text(
                                    "We first make our habits, \nand then our habits \nmakes us."
                                        .toUpperCase(),
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtKlasikRegular18,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 14,
                                    bottom: 36,
                                  ),
                                  child: Text(
                                    "- anonymous".toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeBold12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            left: 18,
                            top: 19,
                          ),
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                    bottom: 15,
                                  ),
                                  child: Text(
                                    "Habits".toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeBold14,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding: getPadding(
                                    left: 14,
                                    top: 6,
                                    right: 14,
                                    bottom: 6,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "SUN",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold10,
                                        ),
                                      ),
                                      Text(
                                        "17",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold16Gray800,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                  ),
                                  padding: getPadding(
                                    left: 13,
                                    top: 6,
                                    right: 13,
                                    bottom: 6,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "MON",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold10,
                                        ),
                                      ),
                                      Text(
                                        "18",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold16Gray800,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                  ),
                                  padding: getPadding(
                                    left: 15,
                                    top: 6,
                                    right: 15,
                                    bottom: 6,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "TUE",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold10,
                                        ),
                                      ),
                                      Text(
                                        "18",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold16Gray800,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                  ),
                                  padding: getPadding(
                                    left: 13,
                                    top: 6,
                                    right: 13,
                                    bottom: 6,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "WED",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold10,
                                        ),
                                      ),
                                      Text(
                                        "19",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold16Gray800,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                  ),
                                  padding: getPadding(
                                    left: 15,
                                    top: 1,
                                    right: 15,
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imageNotFound,
                                        height: getVerticalSize(
                                          3,
                                        ),
                                        width: getHorizontalSize(
                                          16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "THU",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold10,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 5,
                                        ),
                                        child: Text(
                                          "20",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtManropeBold16Gray800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
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
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ListreadabookItemWidget();
                          },
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
