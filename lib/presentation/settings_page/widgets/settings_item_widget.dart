import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SettingsItemWidget extends StatelessWidget {
  SettingsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        top: 14,
        right: 8,
        bottom: 14,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 38,
            width: 38,
            margin: getMargin(
              top: 3,
              bottom: 3,
            ),
            variant: IconButtonVariant.FillOrange30063,
            padding: IconButtonPadding.PaddingAll9,
            child: CustomImageView(
              svgPath: ImageConstant.imgNotificationOrangeA200,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Notifications",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium16,
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 2,
                  ),
                  child: Text(
                    "Customize notifications",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeMedium14Gray800871,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgVectorGray800,
            height: getVerticalSize(
              10,
            ),
            width: getHorizontalSize(
              4,
            ),
            margin: getMargin(
              top: 17,
              right: 12,
              bottom: 17,
            ),
          ),
        ],
      ),
    );
  }
}
