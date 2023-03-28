import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_button.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';

class CongratulationPopupDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(all: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Spacer(),
          Container(
              width: double.maxFinite,
              child: Container(
                  width: getHorizontalSize(374),
                  padding: getPadding(left: 12, right: 12),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(365),
                            width: getHorizontalSize(331),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(313),
                                            width: getHorizontalSize(312),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTeepeeswirly,
                                                      height: getSize(312),
                                                      width: getSize(312),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text(
                                                          "Congratulations!"
                                                              .toUpperCase(),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtKlasikRegular24))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(269),
                                            margin: getMargin(
                                                left: 21, top: 9, right: 20),
                                            child: Text(
                                                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtManropeMedium16Gray80087))
                                      ])),
                              CustomIconButton(
                                  height: 32,
                                  width: 32,
                                  margin: getMargin(top: 12),
                                  variant: IconButtonVariant.FillGray80063,
                                  shape: IconButtonShape.CircleBorder16,
                                  padding: IconButtonPadding.PaddingAll9,
                                  alignment: Alignment.topRight,
                                  onTap: () {
                                    onTapBtnClose(context);
                                  },
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgClose))
                            ])),
                        CustomButton(
                            height: getVerticalSize(60),
                            text: "Create New Habit",
                            margin: getMargin(left: 8, top: 30, right: 8)),
                        CustomButton(
                            height: getVerticalSize(60),
                            text: "Continue",
                            margin: getMargin(
                                left: 8, top: 10, right: 8, bottom: 20),
                            variant: ButtonVariant.FillOrange5001)
                      ])))
        ]));
  }

  onTapBtnClose(BuildContext context) {
    Navigator.pop(context);
  }
}
