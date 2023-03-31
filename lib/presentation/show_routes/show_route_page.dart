import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zephyr_app/models/response_api_model.dart';
import 'package:zephyr_app/models/user.dart';
import 'package:zephyr_app/presentation/homepage_tracking_habits_screen/homepage_tracking_habits_screen.dart';
import 'package:zephyr_app/service/firestore_service.dart';
import 'package:zephyr_app/widgets/custom_button.dart';

import '../../core/app_export.dart';
import '../../core/utils/color_constant.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class ShowRoutes extends StatefulWidget {
  final Map<String, List<RouteResponse>> routeResponse;
  const ShowRoutes({super.key, required this.routeResponse});

  @override
  State<ShowRoutes> createState() => _ShowRoutesState();
}

class _ShowRoutesState extends State<ShowRoutes> {
  var selectedRoute = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.orange50,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            height: getVerticalSize(93),
            leadingWidth: 74,
            leading: AppbarImage(
                height: getVerticalSize(65),
                width: getHorizontalSize(64),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 10),
                onTap: () => onTapArrowleft(context)),
            centerTitle: true,
            title: AppbarTitle(text: "Calculate Trip Emissions")),
        body: SingleChildScrollView(
          child: Container(
            height: getVerticalSize(1000),
            child: Column(
              children: [
                // Build the list of routes as Card widgets with the route name and distance, saved Consumption and CO2 emissions for the route. Highlight the route that is currently selected. and give a green outline for routeResponse['fuelEfficent']
                // and a red outline for routeResponse['leastEfficent']

                // Fuel efficent route
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRoute = 0;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          border: Border.all(
                              color: selectedRoute == 0
                                  ? Colors.green
                                  : Colors.transparent,
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      height: getVerticalSize(size.height * .25),
                      width: getVerticalSize(size.width * .95),
                      margin: getMargin(top: 8),
                      padding:
                          getPadding(left: 20, top: 11, right: 20, bottom: 11),
                      // decoration: AppDecoration.fillWhiteA700
                      //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(children: [
                        // Top left icon Car icon

                        Container(
                            height: getVerticalSize(40),
                            width: getHorizontalSize(40),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Center(
                                child: Icon(
                              Icons.directions_car,
                              size: 20,
                            ))),

                        // Top right text

                        Container(
                            // Add Decoration circular border

                            margin: getMargin(left: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Fuel Efficient Route",
                                      style: AppStyle.txtKlasikRegular24
                                          .copyWith(color: Colors.black)),
                                  Text(
                                      ("Distance " +
                                              (widget
                                                          .routeResponse[
                                                              'fuelEfficientRoute']![
                                                              0]
                                                          .distance /
                                                      1000)
                                                  .toString()) +
                                          " Miles",
                                      style: AppStyle.txtManropeMedium14
                                          .copyWith(color: Colors.black)),
                                  Text(
                                      "Amount Fuel: ${widget.routeResponse['fuelEfficientRoute']![0].fuelConsumptionMicroliters ~/ 1000} L",
                                      style: AppStyle.txtManropeMedium14
                                          .copyWith(color: Colors.black)),
                                  Text(
                                      "Saved Fuel: ${widget.routeResponse['fuelEfficientRoute']![0].savedEmmissions} CO2",
                                      style: AppStyle.txtManropeMedium14
                                          .copyWith(color: Colors.black)),
                                  Text(
                                      "Trip Time: ${fromSecondsToReadableTime(widget.routeResponse['fuelEfficientRoute']![0].duration)} minutes",
                                      style: AppStyle.txtManropeMedium14
                                          .copyWith(color: Colors.black)),
                                ])),

                        // Text(snapshot.data!.vehicleName),
                        // Text(snapshot.data!.fuelType.name)
                      ])),
                ),
                Text("Alternative Routes",
                    style: AppStyle.txtKlasikRegular24
                        .copyWith(color: Colors.black)),
                for (int i = 0;
                    i < widget.routeResponse['otherRoutes']!.length;
                    i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedRoute = i + 1;
                      });
                    },
                    child: Container(
                        width: getVerticalSize(size.width * .95),
                        height: getVerticalSize(size.height * .25),
                        // width: getVerticalSize(size.width * .95),
                        margin: getMargin(top: 8),
                        padding: getPadding(
                            left: 20, top: 11, right: 20, bottom: 11),
                        decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            border: Border.all(
                                color: selectedRoute == i + 1
                                    ? Colors.black
                                    : Colors.transparent,
                                width: 2),
                            // border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          Container(
                              height: getVerticalSize(40),
                              width: getHorizontalSize(40),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Center(
                                  child: Icon(
                                Icons.directions_car,
                                size: 20,
                              ))),
                          Container(
                              margin: getMargin(left: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        ("Distance " +
                                                (widget
                                                            .routeResponse[
                                                                'otherRoutes']![
                                                                i]
                                                            .distance /
                                                        1000)
                                                    .toString()) +
                                            " Miles",
                                        style: AppStyle.txtManropeMedium14
                                            .copyWith(color: Colors.black)),
                                    Text(
                                        "Amount Fuel: ${widget.routeResponse['otherRoutes']![i].fuelConsumptionMicroliters ~/ 1000} L",
                                        style: AppStyle.txtManropeMedium14
                                            .copyWith(color: Colors.black)),
                                    Text(
                                        "Saved Fuel: ${widget.routeResponse['otherRoutes']![i].savedEmmissions} CO2",
                                        style: AppStyle.txtManropeMedium14
                                            .copyWith(color: Colors.black)),
                                    Text(
                                        "Trip Time: ${fromSecondsToReadableTime(widget.routeResponse['otherRoutes']![i].duration)} minutes",
                                        style: AppStyle.txtManropeMedium14
                                            .copyWith(color: Colors.black)),
                                  ])),
                          SizedBox(
                            width: 10,
                          ),
                        ])),
                  ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  // width: getHorizontalSize(size.width * .5xw),
                  height: getVerticalSize(size.height * .1),
                  child: CustomButton(
                    // width: getHorizontalSize(size.width * .5),
                    text: "Start Trip",
                    onTap: () async {
                      // Should be an API call but run transaction in front end
                      // for now

                      DataBaseService db = DataBaseService(
                          uid: FirebaseAuth.instance.currentUser!.uid);
                      var add = await db.updateEmissions({
                        'carbonFootprint': widget
                            .routeResponse[selectedRoute > 0
                                ? 'otherRoutes'
                                : 'fuelEfficientRoute']![selectedRoute]
                            .fuelConsumptionMicroliters,
                        'carbonFootprintSaved': widget
                            .routeResponse[selectedRoute > 0
                                ? 'otherRoutes'
                                : 'fuelEfficientRoute']![selectedRoute]
                            .savedEmmissions,
                      });

                      if (add) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Trip Started')));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomepageTrackingHabitsScreen()));
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  String fromSecondsToReadableTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds - hours * 3600) ~/ 60;
    int secondsLeft = seconds - hours * 3600 - minutes * 60;
    return hours.toString() +
        "h " +
        minutes.toString() +
        "m " +
        secondsLeft.toString() +
        "s";
  }
}
