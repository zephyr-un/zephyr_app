import 'package:flutter/services.dart';
import 'package:zephyr_app/app/app.dart';
import 'package:zephyr_app/bootstrap.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  bootstrap(() => const App());
}
