import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';

// ignore: must_be_immutable
class AnalyticsItemWidget extends StatelessWidget {
  AnalyticsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
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
              right: 10,
            ),
            child: Text(
              "22",
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
    );
  }
}
