import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/infrastructure/apis/weather_apis.dart';
import 'package:weather_app/infrastructure/repositories/weather_repo.dart';
import 'package:weather_app/presentation/pages/select_county_page/select_county_page.dart';
import 'package:weather_app/presentation/pages/splash_screen.dart/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/services/hive_service.dart/hive_service.dart';
import 'package:weather_app/utils/box_keys.dart';
import '../../application/weather_bloc/weather_bloc.dart';
import 'main_page/main_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: readJson(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const SplashScreen();
        } else {
          return HiveService.readString(boxName: BoxKeys.selectCountry).isEmpty
              ? const SelectCountyPage()
              : MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => WeatherBloc(
                        WeatherRepo(
                          WeatherService.create(),
                        ),
                      )..add(
                          WeatherEvent.getData(
                            country: HiveService.readString(
                              boxName: BoxKeys.selectCountry,
                            ),
                          ),
                        ),
                      child: const MainPage(),
                    )
                  ],
                  child: const MainPage(),
                );
        }
      },
    );
  }

  Future<bool> readJson() async {
    // await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}
