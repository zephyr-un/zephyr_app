import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListreadabookItemWidget extends StatelessWidget {
  ListreadabookItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              top: 25,
              bottom: 24,
            ),
            child: Text(
              "Read A Book",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeBold14,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
            ),
            child: SizedBox(
              height: getVerticalSize(
                70,
              ),
              child: VerticalDivider(
                width: getHorizontalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.orange5001,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 15,
              top: 8,
              bottom: 8,
            ),
            padding: getPadding(
              all: 2,
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
                    50,
                  ),
                  width: getSize(
                    50,
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
          Container(
            margin: getMargin(
              left: 2,
              top: 8,
              bottom: 8,
            ),
            padding: getPadding(
              all: 2,
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
                    50,
                  ),
                  width: getSize(
                    50,
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
          CustomIconButton(
            height: 54,
            width: 54,
            margin: getMargin(
              left: 2,
              top: 8,
              bottom: 8,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgEye,
            ),
          ),
          Container(
            margin: getMargin(
              left: 2,
              top: 8,
              bottom: 8,
            ),
            padding: getPadding(
              all: 2,
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
                    50,
                  ),
                  width: getSize(
                    50,
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
          Container(
            margin: getMargin(
              left: 2,
              top: 8,
              bottom: 8,
            ),
            padding: getPadding(
              all: 2,
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
                    50,
                  ),
                  width: getSize(
                    50,
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
    );
  }
}
