import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:weather_app/presentation/styles/app_colors.dart';
import 'package:weather_app/presentation/styles/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoInternet extends StatelessWidget {
  final bool isAppbar;
  const NoInternet({this.isAppbar = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      appBar: isAppbar
          ? PreferredSize(
              preferredSize: Size.fromHeight(56.h),
              child: AppBar(
                foregroundColor: AppColors.primaryColor,
                title: Text(
                  'results'.tr(),
                  style: AdaptiveTheme.of(context).theme.textTheme.bodyText1,
                ),
                centerTitle: true,
                backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
                elevation: 0,
              ),
            )
          : const PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 88.h),
          Text(
            "no_internet_connection".tr(),
            style: AppTextStyles.medium.copyWith(
              fontSize: 16.sp,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 46.h),
          Center(
            child: Image.asset("assets/images/no_internet.png"),
          ),
        ],
      )),
    );
  }
}
