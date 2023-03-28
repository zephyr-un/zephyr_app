import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListdayItemWidget extends StatelessWidget {
  ListdayItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: getMargin(
              right: 3,
            ),
            padding: getPadding(
              left: 4,
              top: 5,
              right: 4,
              bottom: 5,
            ),
            decoration: AppDecoration.fillOrange5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                    right: 14,
                  ),
                  child: Text(
                    "8",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
                CustomIconButton(
                  height: 38,
                  width: 38,
                  margin: getMargin(
                    top: 2,
                    right: 1,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgEye,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: getMargin(
              left: 3,
              right: 3,
            ),
            padding: getPadding(
              left: 4,
              top: 5,
              right: 4,
              bottom: 5,
            ),
            decoration: AppDecoration.fillOrange5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                    right: 14,
                  ),
                  child: Text(
                    "9",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 2,
                    right: 1,
                  ),
                  padding: getPadding(
                    all: 1,
                  ),
                  decoration: AppDecoration.fillOrangeA20063.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getSize(
                          34,
                        ),
                        width: getSize(
                          34,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.orangeA200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
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
        Expanded(
          child: Container(
            margin: getMargin(
              left: 3,
              right: 3,
            ),
            padding: getPadding(
              left: 4,
              top: 5,
              right: 4,
              bottom: 5,
            ),
            decoration: AppDecoration.fillOrange5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                    right: 11,
                  ),
                  child: Text(
                    "10",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
                CustomIconButton(
                  height: 38,
                  width: 38,
                  margin: getMargin(
                    top: 2,
                    right: 1,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgEye,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: getMargin(
              left: 3,
              right: 3,
            ),
            padding: getPadding(
              left: 4,
              top: 5,
              right: 4,
              bottom: 5,
            ),
            decoration: AppDecoration.fillOrange5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "11",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 2,
                    right: 1,
                  ),
                  padding: getPadding(
                    all: 1,
                  ),
                  decoration: AppDecoration.fillOrangeA20063.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getSize(
                          34,
                        ),
                        width: getSize(
                          34,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.orangeA200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
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
        Expanded(
          child: Container(
            margin: getMargin(
              left: 3,
              right: 3,
            ),
            padding: getPadding(
              left: 4,
              top: 5,
              right: 4,
              bottom: 5,
            ),
            decoration: AppDecoration.fillOrange5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                    right: 11,
                  ),
                  child: Text(
                    "12",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 2,
                    right: 1,
                  ),
                  padding: getPadding(
                    all: 1,
                  ),
                  decoration: AppDecoration.fillOrangeA20063.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getSize(
                          34,
                        ),
                        width: getSize(
                          34,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.orangeA200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
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
        Expanded(
          child: Container(
            margin: getMargin(
              left: 3,
              right: 3,
            ),
            padding: getPadding(
              left: 4,
              top: 5,
              right: 4,
              bottom: 5,
            ),
            decoration: AppDecoration.fillOrange5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "13",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
                CustomIconButton(
                  height: 38,
                  width: 38,
                  margin: getMargin(
                    top: 1,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgEye,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: getMargin(
              left: 3,
            ),
            padding: getPadding(
              left: 4,
              top: 5,
              right: 4,
              bottom: 5,
            ),
            decoration: AppDecoration.fillOrange5001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                    right: 11,
                  ),
                  child: Text(
                    "14",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgUserOrangeA200,
                  height: getSize(
                    38,
                  ),
                  width: getSize(
                    38,
                  ),
                  margin: getMargin(
                    top: 2,
                    right: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
