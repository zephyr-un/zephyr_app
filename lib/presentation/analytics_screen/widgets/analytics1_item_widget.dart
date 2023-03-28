import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Analytics1ItemWidget extends StatelessWidget {
  Analytics1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: getPadding(
              right: 19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "20 Days",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtKlasikRegular24,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "Longest Streak",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeMedium12,
                      ),
                    ),
                  ],
                ),
                CustomIconButton(
                  height: 38,
                  width: 38,
                  margin: getMargin(
                    left: 30,
                    top: 3,
                    bottom: 2,
                  ),
                  variant: IconButtonVariant.FillOrange3006c,
                  shape: IconButtonShape.CircleBorder19,
                  padding: IconButtonPadding.PaddingAll9,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgFire,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 19,
              bottom: 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "0 Days",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtKlasikRegular24,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 3,
                      ),
                      child: Text(
                        "Current Streak",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeMedium12,
                      ),
                    ),
                  ],
                ),
                CustomIconButton(
                  height: 38,
                  width: 38,
                  margin: getMargin(
                    left: 31,
                    top: 2,
                    bottom: 1,
                  ),
                  variant: IconButtonVariant.FillRed4006c,
                  shape: IconButtonShape.CircleBorder19,
                  padding: IconButtonPadding.PaddingAll9,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgAirplane,
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
