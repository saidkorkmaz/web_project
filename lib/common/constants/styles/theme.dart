import 'package:flutter/material.dart';
import 'package:web_task/common/constants/styles/color.dart';
import 'package:web_task/common/constants/styles/typography.dart';

class Themes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: MyColor.light,
      dividerColor: MyColor.medium,
      colorScheme: const ColorScheme.light().copyWith(
        primary: MyColor.primary,
        secondary: MyColor.secondary,
        onPrimary: MyColor.white,
        background: MyColor.light,
        onBackground: MyColor.dark,
        surface: MyColor.transparent,
        
      ),
      textTheme: TextTheme(
        headline1: MyTypography.headline1,
        headline2: MyTypography.headline2,
        headline3: MyTypography.headline3,
        headline4: MyTypography.headline4,
        headline5: MyTypography.headline5,
        bodyText1: MyTypography.body1,
        bodyText2: MyTypography.body2,
        subtitle1: MyTypography.subtitle1,
        subtitle2: MyTypography.subtitle2,
      ));
}
