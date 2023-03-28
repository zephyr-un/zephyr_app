import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:zephyr_app/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:zephyr_app/widgets/custom_button.dart';

class LoginPageScreen extends StatefulWidget {
  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  var _showPassword = false;
  var loginButtonLoading = false;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange50,
        body: Container(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: getVerticalSize(
                    692,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSplashscreen692x414,
                        height: getVerticalSize(
                          692,
                        ),
                        width: getHorizontalSize(
                          414,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            left: 10,
                            top: 28,
                            right: 10,
                            bottom: 28,
                          ),
                          decoration:
                              AppDecoration.gradientOrange5000Orange5001,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgQuestion,
                                height: getVerticalSize(
                                  65,
                                ),
                                width: getHorizontalSize(
                                  64,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              Spacer(),
                              Container(
                                width: getHorizontalSize(
                                  295,
                                ),
                                margin: getMargin(
                                  left: 49,
                                  right: 49,
                                ),
                                child: Text(
                                  "WELCOME TO Monumental habits".toUpperCase(),
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtKlasikRegular32,
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  GoogleSignIn _googleSignIn =
                                      GoogleSignIn(scopes: ['email']);
                                  try {
                                    GoogleSignInAccount? googleUser =
                                        await _googleSignIn.signIn();
                                    GoogleSignInAuthentication googleAuth =
                                        await googleUser!.authentication;
                                    final credential =
                                        GoogleAuthProvider.credential(
                                      accessToken: googleAuth.accessToken,
                                      idToken: googleAuth.idToken,
                                    );
                                    await FirebaseAuth.instance
                                        .signInWithCredential(credential);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Logged in successfully")));
                                  } catch (e) {
                                    print(e);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Error" + " " + e.toString())));
                                  }
                                },
                                child: Container(
                                  margin: getMargin(
                                    left: 10,
                                    top: 41,
                                    right: 10,
                                  ),
                                  padding: getPadding(
                                    left: 63,
                                    top: 11,
                                    right: 63,
                                    bottom: 11,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgGoogle,
                                        height: getSize(
                                          23,
                                        ),
                                        width: getSize(
                                          23,
                                        ),
                                        margin: getMargin(
                                          top: 1,
                                          bottom: 2,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 29,
                                          top: 4,
                                          right: 33,
                                        ),
                                        child: Text(
                                          "Continue with  Google",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 10,
                                  top: 8,
                                  right: 10,
                                  bottom: 149,
                                ),
                                padding: getPadding(
                                  left: 63,
                                  top: 13,
                                  right: 63,
                                  bottom: 13,
                                ),
                                // decoration:
                                //     AppDecoration.fillWhiteA700.copyWith(
                                //   borderRadius:
                                //       BorderRadiusStyle.roundedBorder10,
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: getPadding(
                    top: 15,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Log in with email",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeMedium16,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.orange5001,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                          top: 15,
                          right: 20,
                        ),
                        padding: getPadding(
                          left: 17,
                          right: 17,
                        ),
                        decoration: AppDecoration.fillYellow50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: AppStyle.txtKlasikRegular18),
                          style: AppStyle.txtKlasikRegular18,
                        ),
                        // Row(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     CustomImageView(
                        //       svgPath: ImageConstant.imgMail,
                        //       height: getVerticalSize(
                        //         12,
                        //       ),
                        //       width: getHorizontalSize(
                        //         15,
                        //       ),
                        //       margin: getMargin(
                        //         top: 22,
                        //         bottom: 22,
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: getPadding(
                        //         left: 17,
                        //       ),
                        //       child: SizedBox(
                        //         height: getVerticalSize(
                        //           56,
                        //         ),
                        //         child: VerticalDivider(
                        //           width: getHorizontalSize(
                        //             1,
                        //           ),
                        //           thickness: getVerticalSize(
                        //             1,
                        //           ),
                        //           color: ColorConstant.orange5001,
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: getPadding(
                        //         left: 15,
                        //         top: 19,
                        //         bottom: 14,
                        //       ),
                        //       child: TextField(
                        //         controller: emailController,

                        //         // overflow: TextOverflow.ellipsis,
                        //         textAlign: TextAlign.left,
                        //         style: AppStyle.txtManropeBold16Orange30001,
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: getPadding(
                        //         left: 2,
                        //         right: 89,
                        //       ),
                        //       child: SizedBox(
                        //         height: getVerticalSize(
                        //           56,
                        //         ),
                        //         child: VerticalDivider(
                        //           width: getHorizontalSize(
                        //             1,
                        //           ),
                        //           thickness: getVerticalSize(
                        //             1,
                        //           ),
                        //           color: ColorConstant.gray800,
                        //           indent: getHorizontalSize(
                        //             19,
                        //           ),
                        //           endIndent: getHorizontalSize(
                        //             19,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ),
                      Container(
                        height: getVerticalSize(
                          56,
                        ),
                        width: double.maxFinite,
                        margin: getMargin(
                          top: 8,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.orange5001,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: getMargin(
                                  left: 20,
                                  right: 20,
                                ),
                                padding: getPadding(
                                  left: 19,
                                  right: 19,
                                ),
                                decoration: AppDecoration.fillYellow50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: TextField(
                                  // Show password w underline and hide password w dot
                                  obscureText: !_showPassword,

                                  controller: passwordController,
                                  decoration: InputDecoration(
                                      // Show Text w underline
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.remove_red_eye,
                                          color: _showPassword
                                              ? Colors.blue
                                              : Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() =>
                                              _showPassword = !_showPassword);
                                        },
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: AppStyle.txtKlasikRegular18),
                                  style: AppStyle.txtKlasikRegular18,
                                ),
                                // )
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   children: [
                                //     CustomImageView(
                                //       svgPath: ImageConstant.imgLock,
                                //       height: getVerticalSize(
                                //         16,
                                //       ),
                                //       width: getHorizontalSize(
                                //         12,
                                //       ),
                                //       margin: getMargin(
                                //         top: 20,
                                //         bottom: 20,
                                //       ),
                                //     ),
                                //     Padding(
                                //       padding: getPadding(
                                //         left: 18,
                                //       ),
                                //       child: SizedBox(
                                //         height: getVerticalSize(
                                //           56,
                                //         ),
                                //         child: VerticalDivider(
                                //           width: getHorizontalSize(
                                //             1,
                                //           ),
                                //           thickness: getVerticalSize(
                                //             1,
                                //           ),
                                //           color: ColorConstant.orange5001,
                                //         ),
                                //       ),
                                //     ),
                                //     Padding(
                                //       padding: getPadding(
                                //         left: 15,
                                //         top: 17,
                                //         bottom: 16,
                                //       ),
                                //       child: Text(
                                //         "Password",
                                //         overflow: TextOverflow.ellipsis,
                                //         textAlign: TextAlign.left,
                                //         style: AppStyle
                                //             .txtManropeMedium16Gray80087,
                                //       ),
                                //     ),
                                //     Spacer(),
                                //     Padding(
                                //       padding: getPadding(
                                //         top: 17,
                                //         right: 1,
                                //         bottom: 18,
                                //       ),
                                //       child: Text(
                                //         "Show",
                                //         overflow: TextOverflow.ellipsis,
                                //         textAlign: TextAlign.left,
                                //         style: AppStyle.txtManropeMedium14
                                //             .copyWith(
                                //           decoration: TextDecoration.underline,
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        isLoading: loginButtonLoading,
                        onTap: () {
                          loginButtonLoading = true;
                          try {
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text)
                                .then((value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Login Success"),
                                ),
                              );
                              loginButtonLoading = false;
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomeScreen()));
                            });
                          } catch (e) {
                            loginButtonLoading = false;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text("Login Failed" + "  " + e.toString()),
                              ),
                            );
                          }
                        },
                        height: getVerticalSize(
                          60,
                        ),
                        text: "Login",
                        margin: getMargin(
                          left: 20,
                          top: 21,
                          right: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetPasswordScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Text(
                            "Forgot Password?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeMedium14.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPageScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: getPadding(
                            top: 8,
                            bottom: 12,
                          ),
                          child: Text(
                            "Don’t have an account? Sign up",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeBold14,
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
    );
  }
}
