import 'package:flutter/material.dart';
import 'package:zephyr_app/counter/counter.dart';
import 'package:zephyr_app/l10n/l10n.dart';

import '../../routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
