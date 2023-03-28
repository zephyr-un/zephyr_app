import '../settings_page/widgets/settings_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_image.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_title.dart';
import 'package:zephyr_app/widgets/app_bar/custom_app_bar.dart';
import 'package:zephyr_app/widgets/custom_button.dart';
import 'package:zephyr_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingsPage extends StatelessWidget {
  TextEditingController settingSevenController = TextEditingController();

  TextEditingController settingTenController = TextEditingController();

  TextEditingController settingElevenController = TextEditingController();

  TextEditingController settingTwelveController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange50,
        resizeToAvoidBottomInset: false,
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
            text: "Settings",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 32,
                ),
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
                        imagePath: ImageConstant.imgPastedimage01146x222,
                        height: getVerticalSize(
                          146,
                        ),
                        width: getHorizontalSize(
                          222,
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
                        child: Padding(
                          padding: getPadding(
                            left: 33,
                            top: 19,
                          ),
                          child: Text(
                            "Check Your Profile",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeBold20,
                          ),
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        width: getHorizontalSize(
                          120,
                        ),
                        text: "View",
                        margin: getMargin(
                          left: 29,
                          bottom: 20,
                        ),
                        padding: ButtonPadding.PaddingAll10,
                        fontStyle: ButtonFontStyle.ManropeBold14,
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 32,
                            top: 50,
                          ),
                          child: Text(
                            "jonathansmith@gmail.com",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeMedium12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Text(
                  "General",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
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
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return SettingsItemWidget();
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "Support",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium16,
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: settingSevenController,
                hintText: "Contact",
                margin: getMargin(
                  top: 14,
                ),
                prefix: Container(
                  padding: getPadding(
                    all: 10,
                  ),
                  margin: getMargin(
                    left: 6,
                    top: 6,
                    right: 14,
                    bottom: 6,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.orange30063,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        12,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgFloatingicon,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstant.gray800,
                      width: getHorizontalSize(
                        2,
                      ),
                      strokeAlign: strokeAlignCenter,
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgVectorGray800,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: settingTenController,
                hintText: "Feedback",
                margin: getMargin(
                  top: 8,
                ),
                prefix: Container(
                  padding: getPadding(
                    all: 10,
                  ),
                  margin: getMargin(
                    left: 6,
                    top: 6,
                    right: 14,
                    bottom: 6,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.orange30063,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        12,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgMenuOrange30001,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstant.gray800,
                      width: getHorizontalSize(
                        2,
                      ),
                      strokeAlign: strokeAlignCenter,
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgVectorGray800,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: settingElevenController,
                hintText: "Privacy Policy",
                margin: getMargin(
                  top: 8,
                ),
                prefix: Container(
                  padding: getPadding(
                    all: 10,
                  ),
                  margin: getMargin(
                    left: 6,
                    top: 6,
                    right: 14,
                    bottom: 6,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.orange30063,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        12,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgOffer,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstant.gray800,
                      width: getHorizontalSize(
                        2,
                      ),
                      strokeAlign: strokeAlignCenter,
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgVectorGray800,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: settingTwelveController,
                hintText: "About",
                margin: getMargin(
                  top: 8,
                ),
                textInputAction: TextInputAction.done,
                prefix: Container(
                  padding: getPadding(
                    all: 11,
                  ),
                  margin: getMargin(
                    left: 6,
                    top: 6,
                    right: 14,
                    bottom: 6,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.orange30063,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        12,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgWarning,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstant.gray800,
                      width: getHorizontalSize(
                        2,
                      ),
                      strokeAlign: strokeAlignCenter,
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgVectorGray800,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgMapOrangeA200,
                height: getSize(
                  64,
                ),
                width: getSize(
                  64,
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  top: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
