import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../../application/weather_bloc/weather_bloc.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_icons.dart';
import '../../styles/app_styles.dart';
import 'dart:async';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DateTime dateTime = DateTime.now();
  String? timeString;
  bool themeMode = true;

  @override
  void initState() {
    setup();
    timeString = formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  !themeMode ? AppIcons.background : AppIcons.backgroundLight,
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.only(left: 1.sw / 1.2),
                  child: FloatingActionButton(
                    mini: true,
                    onPressed: () async {
                      var mode = await AdaptiveTheme.getThemeMode();
                      if (mode == AdaptiveThemeMode.light) {
                        themeMode = true;
                        // AdaptiveTheme.of(context).setDark();
                      } else {
                        themeMode = false;
                        // AdaptiveTheme.of(context).setLight();
                      }
                      setState(() {});
                    },
                    backgroundColor: AppColors.buttonColorSecond,
                    child: Icon(
                      Icons.settings,
                      size: 22.sp,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 340,
                      height: 500,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: AppColors.blue),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Positioned(
                      top: -60.h,
                      left: 110.w,
                      child: Image.asset(AppIcons.gerb, width: 100),
                    ),
                    Positioned(
                      top: 120.h,
                      left: 32.w,
                      child: Column(
                        children: [
                          Text(
                            DateFormat("hh : mm").format(
                              DateTime.now(),
                            ),
                            style: AppTextStyles.bold.copyWith(
                              fontSize: 80.sp,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "12 май",
                            style: AppTextStyles.bold.copyWith(
                              fontSize: 60.sp,
                            ),
                          ),
                          Text(
                            "Сешанба",
                            style: AppTextStyles.regular.copyWith(
                              fontSize: 60.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      AppIcons.lightRain,
                      width: 140.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "+27" "°",
                          style: AppTextStyles.regular300.copyWith(
                            fontSize: 80.sp,
                          ),
                        ),
                        Text(
                          "Ташкент",
                          style: AppTextStyles.regular300.copyWith(
                            fontSize: 40.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = formatDateTime(now);
    if (timeString != formattedDateTime) {
      setState(() => timeString = formattedDateTime);
    }
  }

  String formatDateTime(DateTime dateTime) {
    return DateFormat('hh : mm').format(dateTime);
  }

  Future<void> setup() async {
    debugPrint(dateTime.timeZoneName);
    debugPrint(dateTime.timeZoneOffset.toString());
  }
}
