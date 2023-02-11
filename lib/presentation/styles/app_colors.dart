import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const Color primaryColor = Color(0xFF104D10);
  static const Color grey = Color(0xFFF9F9F9);
  static const Color secondaryColor = Color(0xFFFE96ED);
  static const Color secondaryVariantColor = Color(0xFFFDC8F5);
  static const Color tertiaryColor = Color(0xFFC596FE);
  static const Color tertiaryVariantColor = Color(0xFFDEC4FD);
  static const Color background = Color(0xFFF6F8FA);

  static const Color buttonColorSecond = Color(0xFF0065E0);
  static const Color blue = Color(0xFF006CEE);
  static const Color blueBold = Color(0xFF001A48);
  static const Color buttonColor = Color(0xFFE5E383);
  static const Color red = Color(0xFFFF3838);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color linksColor = Color(0xFF1967D2);
  static const Color disabledColor = Color(0xFFC4C4C4);
  static const Color disabledTextColor = Color(0xFF7B7B7B);
  static const Color textFormColor = Color(0xFF1E791E);
  static const Color greenBold = Color(0xFF104D10);

  static const LinearGradient linear = LinearGradient(
    colors: [
      Color(0xFFC596FE),
      Color(0xFFFE96ED),
    ],
  );

  static const LinearGradient linear2 = LinearGradient(
    colors: [
      Color(0xFF7B61FF),
      Color(0xFFFE96ED),
    ],
  );
  static const LinearGradient linear3 = LinearGradient(
    stops: [0.57, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0x00000000),
      Color(0x48000000),
    ],
  );
}

class O {}
