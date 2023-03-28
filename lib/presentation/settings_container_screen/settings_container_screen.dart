import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';
import 'package:zephyr_app/presentation/settings_page/settings_page.dart';
import 'package:zephyr_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SettingsContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.orange50,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.settingsPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Xmlid195:
        return AppRoutes.settingsPage;
      case BottomBarEnum.Xmlid98:
        return "/";
      case BottomBarEnum.Xmlid95:
        return "/";
      case BottomBarEnum.Xmlid196:
        return "/";
      case BottomBarEnum.Coursesyellow900:
        return "/";
      case BottomBarEnum.Community:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.settingsPage:
        return SettingsPage();
      default:
        return DefaultWidget();
    }
  }

  @override
  void onInit(BuildContext context) {}
}
