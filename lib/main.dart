import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/presentation/pages/app_widget.dart';
import 'package:weather_app/presentation/styles/app_theme.dart';
import 'package:weather_app/utils/app_init.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/box_keys.dart';
import 'package:weather_app/utils/get_it.dart';

import 'domain/core/network_interceptor.dart';

void main() async {
  await initializeApp();
  await Hive.openBox<String>(BoxKeys.selectCountry);
  runApp(
    EasyLocalization(
      startLocale: const Locale('uz', 'UZ'),
      supportedLocales: const [Locale('uz', 'UZ'), Locale('en', 'EN')],
      path: 'assets/translations',
      fallbackLocale: const Locale('uz', 'UZ'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    getIt.get<Dio>().interceptors
      ..add(LogInterceptor(
          responseHeader: false, requestBody: true, responseBody: true))
      ..add(NetworkInterceptor());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, wid) => AdaptiveTheme(
        light: AppTheme.lightTheme,
        dark: AppTheme.darkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) {
          return MaterialApp(
            theme: theme,
            darkTheme: darkTheme,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            title: "appName".tr(),
            home: const AppWidget(),
            builder: EasyLoading.init(),
          );
        },
      ),
    );
  }
}
