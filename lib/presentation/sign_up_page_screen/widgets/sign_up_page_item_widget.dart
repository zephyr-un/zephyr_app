import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';

class SignUpPageItemWidget extends StatelessWidget {
  final String? hint;
  final String? text;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isPassword;
  final bool? isPasswordVisible;
  final TextEditingController controller;
  final bool? isEmail;
  SignUpPageItemWidget(
      {this.hint,
      this.text,
      this.suffixIcon,
      this.prefixIcon,
      this.isPasswordVisible = false,
      required this.controller,
      this.isPassword,
      this.isEmail});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: getPadding(
          left: 17,
          right: 17,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: TextField(
          controller: controller,
          obscureText: isPassword ?? false ? !isPasswordVisible! : false,
          keyboardType: isEmail ?? false ? TextInputType.emailAddress : null,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyle.txtKlasikRegular18.copyWith(
              color: ColorConstant.gray8007f,
            ),
            border: InputBorder.none,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
        ));
  }
}
