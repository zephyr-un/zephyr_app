import 'package:flutter/material.dart';
import 'package:zephyr_app/presentation/splash_screen/splash_screen.dart';
import 'package:zephyr_app/presentation/introduction_one_screen/introduction_one_screen.dart';
import 'package:zephyr_app/presentation/introduction_two_screen/introduction_two_screen.dart';
import 'package:zephyr_app/presentation/introduction_three_screen/introduction_three_screen.dart';
import 'package:zephyr_app/presentation/introduction_four_screen/introduction_four_screen.dart';
import 'package:zephyr_app/presentation/login_page_screen/login_page_screen.dart';
import 'package:zephyr_app/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:zephyr_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:zephyr_app/presentation/homepage_tracking_habits_screen/homepage_tracking_habits_screen.dart';
import 'package:zephyr_app/presentation/analytics_screen/analytics_screen.dart';
import 'package:zephyr_app/presentation/profile_dashboard_screen/profile_dashboard_screen.dart';
import 'package:zephyr_app/presentation/settings_container_screen/settings_container_screen.dart';
import 'package:zephyr_app/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/main_introduction_screen/intro_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String introductionmain = '/introduction_main';

  static const String introductionOneScreen = '/introduction_one_screen';

  static const String introductionTwoScreen = '/introduction_two_screen';

  static const String introductionThreeScreen = '/introduction_three_screen';

  static const String introductionFourScreen = '/introduction_four_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String homepageTrackingHabitsScreen =
      '/homepage_tracking_habits_screen';

  static const String analyticsScreen = '/analytics_screen';

  static const String profileDashboardScreen = '/profile_dashboard_screen';

  static const String settingsPage = '/settings_page';

  static const String settingsContainerScreen = '/settings_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    introductionmain: (context) => IntroductionScreenMain(),
    splashScreen: (context) => SplashScreen(),
    introductionOneScreen: (context) => IntroductionOneScreen(),
    introductionTwoScreen: (context) => IntroductionTwoScreen(),
    introductionThreeScreen: (context) => IntroductionThreeScreen(),
    introductionFourScreen: (context) => IntroductionFourScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    homepageTrackingHabitsScreen: (context) => HomepageTrackingHabitsScreen(),
    analyticsScreen: (context) => AnalyticsScreen(),
    profileDashboardScreen: (context) => ProfileDashboardScreen(),
    settingsContainerScreen: (context) => SettingsContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
