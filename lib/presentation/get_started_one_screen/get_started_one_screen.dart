import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/models/user.dart';
import 'package:zephyr_app/models/vehicle.dart';
import 'package:zephyr_app/service/firestore_service.dart';
import 'package:zephyr_app/widgets/custom_button.dart';

class GetStartedOneScreen extends StatefulWidget {
  @override
  State<GetStartedOneScreen> createState() => _GetStartedOneScreenState();
}

class _GetStartedOneScreenState extends State<GetStartedOneScreen> {
  int selection = 0;
  bool hastapped = false;
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          child: CustomButton(
            isactive: hastapped,
            shape: ButtonShape.Square,
            height: 10,
            width: 10,
            text: "Next",
            onTap: () {
              showDialogPopup(
                context: context,
                title: "Are you sure?",
                content: "You want to continue?",
                onYes: () async {
                  if (name.text.isNotEmpty) {
                    VehicleModel vehicle = VehicleModel(
                        vehicleType: VehicleType.car,
                        vehicleName: name.text,
                        fuelType: selection == 0
                            ? FuelType.electric
                            : selection == 1
                                ? FuelType.hybrid
                                : FuelType.gasoline);
                    DataBaseService db = DataBaseService(
                        uid: FirebaseAuth.instance.currentUser!.uid);
                    var transaction =
                        await db.updateUserData({'vehicle': vehicle.toMap()});
                    if (transaction) {
                      Navigator.pushNamed(
                          context, AppRoutes.homepageTrackingHabitsScreen);
                    } else {
                      showToast("Something went wrong");
                    }
                  } else {
                    showToast("Please enter your name");
                  }
                },
              );
            },

            // onPressed: () {
            //   Navigator.pushNamed(context, AppRoutes.getstarted2);
            // },
          ),
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        backgroundColor: ColorConstant.orange50,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 70,
                      top: 84,
                      right: 50,
                      bottom: 58,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            292,
                          ),
                          child: Text(
                            "What type of car do you have?".toUpperCase(),
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtRobotoRomanRegular24Gray800,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              hastapped = true;
                              selection = 0;
                            });
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                223,
                              ),
                              width: getHorizontalSize(
                                273,
                              ),
                              margin: getMargin(
                                top: 56,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        bottom: 9,
                                      ),
                                      child: Text(
                                        "Electric ".toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular20,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: getVerticalSize(
                                        223,
                                      ),
                                      width: getHorizontalSize(
                                        273,
                                      ),
                                      padding: getPadding(
                                        left: 28,
                                        top: 22,
                                        right: 28,
                                        bottom: 22,
                                      ),
                                      decoration: selection == 0
                                          ? AppDecoration.fillOrange2004f
                                              .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20,
                                            )
                                          : AppDecoration.fillOrange20019
                                              .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20,
                                            ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .img334ecocarflatline,
                                            height: getVerticalSize(
                                              157,
                                            ),
                                            width: getHorizontalSize(
                                              211,
                                            ),
                                            alignment: Alignment.topCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              hastapped = true;
                              selection = 1;
                            });
                          },
                          child: Container(
                            height: getVerticalSize(
                              223,
                            ),
                            width: getHorizontalSize(
                              273,
                            ),
                            margin: getMargin(
                              left: 3,
                              top: 44,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 18,
                                    ),
                                    child: Text(
                                      "HYBRID".toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanRegular20,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      223,
                                    ),
                                    width: getHorizontalSize(
                                      273,
                                    ),
                                    padding: getPadding(
                                      top: 29,
                                      bottom: 29,
                                    ),
                                    decoration: selection == 1
                                        ? AppDecoration.fillOrange2004f
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20,
                                          )
                                        : AppDecoration.fillOrange20019
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20,
                                          ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.img334ecocaroutline,
                                          height: getVerticalSize(
                                            136,
                                          ),
                                          width: getHorizontalSize(
                                            119,
                                          ),
                                          alignment: Alignment.topCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              hastapped = true;
                              selection = 2;
                            });
                          },
                          child: Container(
                            height: getVerticalSize(
                              223,
                            ),
                            width: getHorizontalSize(
                              273,
                            ),
                            margin: getMargin(
                              left: 2,
                              top: 67,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 108,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "GAS".toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanRegular20,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      223,
                                    ),
                                    width: getHorizontalSize(
                                      273,
                                    ),
                                    padding: getPadding(
                                      left: 18,
                                      top: 26,
                                      right: 18,
                                      bottom: 26,
                                    ),
                                    decoration: selection == 2
                                        ? AppDecoration.fillOrange2004f
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20,
                                          )
                                        : AppDecoration.fillOrange20019
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20,
                                          ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .img545roadtripoutline,
                                          height: getVerticalSize(
                                            141,
                                          ),
                                          width: getHorizontalSize(
                                            201,
                                          ),
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showDialogPopup(
      {required BuildContext context,
      required String title,
      required String content,
      required Function() onYes}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            // title: Text(title),
            title: Text(content),
            content: TextField(
              controller: name,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Enter Vehicle Name",
              ),
            ),
            actions: [
              // Enter Vehicle Name

              // Cancel Button
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    TextButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    TextButton(
                      child: Text("Done"),
                      onPressed: () {
                        if (name.text.isEmpty) {
                          showToast("Please enter vehicle name");
                        } else {
                          Navigator.of(context).pop();
                          onYes();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ]);
      },
    );
  }

  void showToast(String s) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(s),
      ),
    );
  }
}
