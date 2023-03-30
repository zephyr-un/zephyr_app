import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zephyr_app/models/location_model.dart';
import 'package:zephyr_app/models/request_api_model.dart';
import 'package:zephyr_app/presentation/profile_dashboard_screen/profile_dashboard_screen.dart';
import 'package:zephyr_app/service/firestore_service.dart';

import '../../service/api_service.dart';
import '../homepage_tracking_habits_screen/widgets/listreadabook_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_image.dart';
import 'package:zephyr_app/widgets/app_bar/appbar_title.dart';
import 'package:zephyr_app/widgets/app_bar/custom_app_bar.dart';

class HomepageTrackingHabitsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange50,
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
            text: "Homepage",
          ),
          actions: [
            CustomImageView(
              url: FirebaseAuth.instance.currentUser!.photoURL!,
              height: getSize(
                44,
              ),
              width: getSize(
                44,
              ),
              radius: BorderRadius.circular(100),
              margin: getMargin(
                left: 27,
                top: 11,
                right: 27,
                bottom: 10,
              ),
            ),
          ],
        ),
        body: Container(
          height: getVerticalSize(
            803,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    bottom: 22,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          76,
                        ),
                        width: getHorizontalSize(
                          117,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgCloud,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup76x117,
                              height: getVerticalSize(
                                76,
                              ),
                              width: getHorizontalSize(
                                117,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            59,
                          ),
                          width: getHorizontalSize(
                            105,
                          ),
                          margin: getMargin(
                            top: 72,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgShapes,
                                height: getVerticalSize(
                                  58,
                                ),
                                width: getHorizontalSize(
                                  105,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMaskgroup58x104,
                                height: getVerticalSize(
                                  58,
                                ),
                                width: getHorizontalSize(
                                  104,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          35,
                        ),
                        width: getHorizontalSize(
                          69,
                        ),
                        margin: getMargin(
                          top: 75,
                          right: 42,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgUnion,
                              height: getVerticalSize(
                                34,
                              ),
                              width: getHorizontalSize(
                                69,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup34x68,
                              height: getVerticalSize(
                                34,
                              ),
                              width: getHorizontalSize(
                                68,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(
                            top: 58,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup10,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: double.maxFinite,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgGroup11,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMaskgroup166x414,
                                        height: getVerticalSize(
                                          166,
                                        ),
                                        width: getHorizontalSize(
                                          414,
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
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavigationBar(
                    onTap: (value) async {
                      ApiService apiService = ApiService();
                      Location origin = Location(
                        40.160304539691815,
                        -82.9638559032275,
                        "Origin",
                      );
                      Location destination = Location(
                        40.264072850977264,
                        -81.8564467400299,
                        "Dest",
                      );

                      RouteType travelMode = RouteType.driving;
                      String routingPreference = "TRAFFIC_AWARE_OPTIMAL";
                      var requestedReferenceRoutes = ["FUEL_EFFICIENT"];
                      var vehicleInfo = {
                        "emissionType": "GASOLINE",
                      };

                      var request = await apiService.getRouteCar(
                          origin: origin,
                          destination: destination,
                          travelMode: travelMode,
                          routingPreference: routingPreference,
                          requestedReferenceRoutes: requestedReferenceRoutes,
                          vehicleInfo: vehicleInfo);

                      print(request);
                      // Switch
                      if (value == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileDashboardScreen(),
                          ),
                        );
                      }
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(
                            24,
                          ),
                          width: getHorizontalSize(
                            24,
                          ),
                        ),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                        icon: CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(
                            24,
                          ),
                          width: getHorizontalSize(
                            24,
                          ),
                        ),
                        label: "Group",
                      ),
                      BottomNavigationBarItem(
                        icon: CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(
                            24,
                          ),
                          width: getHorizontalSize(
                            24,
                          ),
                        ),
                        label: "Profile",
                      ),
                    ]),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 14,
                  ),
                  child: StreamBuilder(
                      stream: DataBaseService(
                              uid: FirebaseAuth.instance.currentUser!.uid)
                          .userData,
                      builder: (context, snapshot) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
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
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgPastedimage01146x204,
                                      height: getVerticalSize(
                                        146,
                                      ),
                                      width: getHorizontalSize(
                                        204,
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
                                      child: Container(
                                        width: getHorizontalSize(
                                          220,
                                        ),
                                        margin: getMargin(
                                          left: 15,
                                          top: 27,
                                        ),
                                        child: Text(
                                          "We first make our habits, \nand then our habits \nmakes us."
                                              .toUpperCase(),
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtKlasikRegular18,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 14,
                                          bottom: 36,
                                        ),
                                        child: Text(
                                          "- anonymous".toUpperCase(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: getVerticalSize(
                                20,
                              ),
                            ),
                            if (snapshot.hasData)
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
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
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      // Show Progress
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Saved Emissions',
                                            style: AppStyle.txtKlasikRegular18,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '${snapshot.data!.carbonFootprintSaved}',
                                            style: AppStyle.txtKlasikRegular40,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: size.width * 0.09,
                                            left: size.height * 0.18),
                                        child: Align(
                                          // alignment: Alignment.bottomLeft,
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'g ',
                                              style:
                                                  AppStyle.txtKlasikRegular24,
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'CO',
                                                    style: AppStyle
                                                        .txtKlasikRegular24),
                                                TextSpan(
                                                    text: '2',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            SizedBox(
                              height: getVerticalSize(
                                20,
                              ),
                            ),
                            if (snapshot.hasData)
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
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
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Consumed Emissions',
                                            style: AppStyle.txtKlasikRegular18,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '${snapshot.data!.carbonFootprint}',
                                            style: AppStyle.txtKlasikRegular40,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: size.width * 0.09,
                                            left: size.height * 0.18),
                                        child: Align(
                                          // alignment: Alignment.bottomLeft,
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'g ',
                                              style:
                                                  AppStyle.txtKlasikRegular24,
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'CO',
                                                    style: AppStyle
                                                        .txtKlasikRegular24),
                                                TextSpan(
                                                    text: '2',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
