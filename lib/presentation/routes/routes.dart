import 'package:weather_app/presentation/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/presentation/pages/app_widget.dart';

class AppRoutes {
  const AppRoutes._();

  static MaterialPageRoute appWidget() {
    return MaterialPageRoute(
      builder: (_) => const AppWidget(),
    );
  }

  static MaterialPageRoute getMain() {
    return MaterialPageRoute(
      builder: (_) => const MainPage(),
    );
  }
}
