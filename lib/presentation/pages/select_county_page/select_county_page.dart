import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:weather_app/presentation/components/app_loading_component.dart';
import 'package:weather_app/presentation/routes/routes.dart';
import 'package:weather_app/presentation/styles/app_colors.dart';
import 'package:weather_app/presentation/styles/app_icons.dart';
import 'package:weather_app/presentation/styles/app_styles.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/services/hive_service.dart/hive_service.dart';
import 'package:weather_app/utils/box_keys.dart';

class SelectCountyPage extends StatefulWidget {
  const SelectCountyPage({super.key});

  @override
  State<SelectCountyPage> createState() => _SelectCountyPageState();
}

class _SelectCountyPageState extends State<SelectCountyPage> {
  String? region;
  List<String> places = [
    'tashkent',
    'andijan',
    'bukhara',
    'gulistan',
    'jizzakh',
    'qarshi',
    'navoiy',
    'namangan',
    'nukus',
    'samarkand',
    'termez',
    'urgench',
    'fergana',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenBold,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Image.asset(
              AppIcons.logo,
              height: 250,
              fit: BoxFit.cover,
            ),
            dropDownForm(title: "Регион"),
            const Spacer(),
            InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                if (region != null) {
                  HiveService.writeString(
                          boxName: BoxKeys.selectCountry, text: region!)
                      .then(
                    (value) {
                      if (value) {
                        Navigator.pushAndRemoveUntil(
                            context, AppRoutes.getMain(), (route) => false);
                      }
                    },
                  );
                } else {
                  EasyLoading.showInfo('Hududingizni tanlang !');
                }
              },
              child: Container(
                width: 160.w,
                padding: EdgeInsets.symmetric(vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Center(
                  child: Text(
                    "Начать",
                    style: AppTextStyles.bold.copyWith(
                      color: AppColors.black,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }

  Column dropDownForm({required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14.w, bottom: 8.h),
          child: Text(
            title,
            style: AppTextStyles.regular.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
        Container(
          height: 45,
          decoration: const BoxDecoration(
            color: AppColors.textFormColor,
            borderRadius: BorderRadius.all(Radius.circular(25.7)),
          ),
          child: DropDownTextField(
            listTextStyle: AppTextStyles.bold.copyWith(color: AppColors.black),
            textStyle: AppTextStyles.bold.copyWith(color: AppColors.white),
            dropdownColor: AppColors.white,
            textFieldDecoration: const InputDecoration(
              border: InputBorder.none,
              iconColor: Colors.white,
            ),
            onChanged: (v) => region = v.value,
            dropDownList: List.generate(
              places.length,
              (index) => DropDownValueModel(
                name:
                    places[index][0].toUpperCase() + places[index].substring(1),
                value: places[index],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        )
      ],
    );
  }
}
