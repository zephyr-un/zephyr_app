import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_button.dart';
import 'package:zephyr_app/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.orange50,
        resizeToAvoidBottomInset: false,
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                padding: getPadding(left: 10, top: 28, right: 10, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(65),
                          width: getHorizontalSize(64),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("Forgot your password?".toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtKlasikRegular24)),
                      CustomImageView(
                          svgPath: ImageConstant.imgXmlid3,
                          height: getVerticalSize(263),
                          width: getHorizontalSize(270),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 54, top: 43)),
                      Container(
                          margin: getMargin(left: 10, top: 45, right: 10),
                          padding: getPadding(all: 20),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(268),
                                    margin:
                                        getMargin(left: 29, top: 1, right: 36),
                                    child: Text(
                                        "Enter your registered email below to receive password reset instruction",
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtManropeMedium14Gray8001)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: emailController,
                                    hintText: "Email",
                                    margin: getMargin(top: 28),
                                    variant:
                                        TextFormFieldVariant.FillOrangeA20063,
                                    padding: TextFormFieldPadding.PaddingAll17,
                                    fontStyle:
                                        TextFormFieldFontStyle.ManropeBold16,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress),
                                CustomButton(
                                    onTap: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        try {
                                          FirebaseAuth.instance
                                              .sendPasswordResetEmail(
                                                  email: emailController.text);
                                          showSnackBar(context,
                                              "Reset link sent to your email");
                                        } catch (e) {
                                          showSnackBar(
                                              context,
                                              "Error sending reset link " +
                                                  e.toString());
                                        }
                                      }
                                    },
                                    width: getHorizontalSize(268),
                                    height: getVerticalSize(60),
                                    text: "Send Reset Link",
                                    margin: getMargin(top: 10))
                              ])),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                            padding: getPadding(bottom: 5),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Remember password? ",
                                      style: TextStyle(
                                          color: ColorConstant.gray800,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w100)),
                                  TextSpan(
                                      text: "Login",
                                      style: TextStyle(
                                          color: ColorConstant.gray800,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w100))
                                ]),
                                textAlign: TextAlign.left)),
                      )
                    ]),
              ),
            )));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  void showSnackBar(BuildContext context, String s) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s)));
  }
}
