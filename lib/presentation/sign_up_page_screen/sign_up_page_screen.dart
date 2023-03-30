import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zephyr_app/models/user.dart';
import 'package:zephyr_app/presentation/get_started_screen/get_started_screen.dart';
import 'package:zephyr_app/presentation/login_page_screen/login_page_screen.dart';
import 'package:zephyr_app/service/firestore_service.dart';

import '../sign_up_page_screen/widgets/sign_up_page_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/custom_button.dart';
import 'package:zephyr_app/widgets/custom_icon_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPageScreen extends StatefulWidget {
  @override
  State<SignUpPageScreen> createState() => _SignUpPageScreenState();
}

class _SignUpPageScreenState extends State<SignUpPageScreen> {
  TextEditingController displayNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var _showPassword = false;
  var keepMeSignedIn = true;
  var emailme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.orange50,
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 33,
            right: 20,
            bottom: 33,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: 'assets/images/img_createacc.png',
                // svgPath: ImageConstant.imgCreateyouraccount,
                height: getVerticalSize(
                  179,
                ),
                width: getHorizontalSize(
                  172,
                ),
                margin: getMargin(
                  left: 93,
                  top: 27,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 34,
                  ),
                  child: Text(
                    "Create your account".toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtKlasikRegular24,
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(
                    top: 36,
                  ),
                  child: Column(
                    children: [
                      SignUpPageItemWidget(
                        controller: displayNameController,
                        hint: "Display Name",
                      ),
                      SizedBox(
                        height: getVerticalSize(
                          20,
                        ),
                      ),
                      SignUpPageItemWidget(
                        isEmail: true,
                        controller: emailController,
                        hint: "Email",
                      ),
                      SizedBox(
                        height: getVerticalSize(
                          20,
                        ),
                      ),
                      SignUpPageItemWidget(
                        isPassword: true,
                        isPasswordVisible: _showPassword,
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: _showPassword ? Colors.blue : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() => _showPassword = !_showPassword);
                          },
                        ),
                        controller: passwordController,
                        hint: "Password",
                      ),
                    ],
                  )),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 29,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          keepMeSignedIn = !keepMeSignedIn;
                        });
                      },
                      child: CustomIconButton(
                        height: 20,
                        width: 20,
                        margin: getMargin(
                          bottom: 3,
                        ),
                        variant: IconButtonVariant.FillOrange30001,
                        shape: IconButtonShape.RoundedBorder6,
                        padding: IconButtonPadding.PaddingAll5,
                        child: keepMeSignedIn
                            ? CustomImageView(
                                svgPath: ImageConstant.imgGroup1,
                              )
                            : Container(),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 1,
                      ),
                      child: Text(
                        "Keep me signed in",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeMedium16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 17,
                  right: 45,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          emailme = !emailme;
                        });
                      },
                      child: CustomIconButton(
                        height: 20,
                        width: 20,
                        margin: getMargin(
                          bottom: 3,
                        ),
                        variant: IconButtonVariant.FillOrange30001,
                        shape: IconButtonShape.RoundedBorder6,
                        padding: IconButtonPadding.PaddingAll5,
                        child: emailme
                            ? CustomImageView(
                                svgPath: ImageConstant.imgGroup1,
                              )
                            : Container(),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 11,
                        top: 1,
                      ),
                      child: Text(
                        "Email me about special pricing and more",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeMedium16Gray800,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                onTap: () {
                  try {
                    if (displayNameController.text.isEmpty) {
                      showSnackBar(context, "Please enter display name");
                    } else if (emailController.text.isEmpty) {
                      showSnackBar(context, "Please enter email");
                    } else if (passwordController.text.isEmpty) {
                      showSnackBar(context, "Please enter password");
                    } else {
                      FirebaseAuth auth = FirebaseAuth.instance;
                      auth
                          .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then((value) {
                        // Done save user if keep me signed in is true

                        User? user = auth.currentUser;
                        user!
                            .updateDisplayName(displayNameController.text)
                            .then((value) async {
                          DataBaseService db = DataBaseService(uid: user.uid);
                          UserModel newUser = UserModel(
                              uid: user.uid,
                              displayName: displayNameController.text,
                              email: emailController.text,
                              authType: AuthType.email);
                          bool b = await db.createUserData(newUser);
                          if (b) {
                            showSnackBar(
                                context, "Account created successfully");

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GetStartedScreen()));
                          } else {
                            throw Exception("Error while creating account");
                          }
                        });
                      }).catchError((e) {
                        showSnackBar(context, e.toString());
                      });
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                height: getVerticalSize(
                  60,
                ),
                text: "Create Account",
                margin: getMargin(
                  top: 25,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 8,
                        bottom: 10,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          134,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray8006c,
                        ),
                      ),
                    ),
                    Text(
                      "Or sign in with",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtManropeMedium14Gray80087,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                        bottom: 10,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          134,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray8006c,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 19,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () async {
                          GoogleSignIn _googleSignIn =
                              GoogleSignIn(scopes: ['email']);
                          try {
                            GoogleSignInAccount? googleUser =
                                await _googleSignIn.signIn();
                            GoogleSignInAuthentication googleAuth =
                                await googleUser!.authentication;
                            final credential = GoogleAuthProvider.credential(
                              accessToken: googleAuth.accessToken,
                              idToken: googleAuth.idToken,
                            );
                            var user = await FirebaseAuth.instance
                                .signInWithCredential(credential);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Logged in successfully")));
                            DataBaseService db =
                                DataBaseService(uid: user.user!.uid);
                            UserModel newUser = UserModel(
                                uid: user.user!.uid,
                                displayName: user.user!.displayName!,
                                email: user.user!.email!,
                                authType: AuthType.google);
                            bool b = await db.createUserData(newUser);
                            if (b) {
                              showSnackBar(
                                  context, "Account created successfully");

                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          GetStartedScreen()));
                            } else {
                              throw Exception("Error while creating account");
                            }
                          } catch (e) {
                            print(e);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Error" + " " + e.toString())));
                          }
                        },
                        height: getVerticalSize(
                          50,
                        ),
                        text: "Google",
                        margin: getMargin(
                          right: 6,
                        ),
                        variant: ButtonVariant.FillWhiteA700,
                        shape: ButtonShape.RoundedBorder12,
                        padding: ButtonPadding.PaddingT14,
                        fontStyle: ButtonFontStyle.ManropeBold16Gray800,
                        prefixWidget: Container(
                          margin: getMargin(
                            right: 16,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgGoogle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: getPadding(
                      top: 34,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String s) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(s),
    ));
  }
}
