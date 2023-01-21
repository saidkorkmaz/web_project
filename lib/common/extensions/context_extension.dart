import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  TextStyle get xHeadline1 => Theme.of(this).textTheme.headline1 ?? const TextStyle();
  TextStyle get xHeadline2 => Theme.of(this).textTheme.headline2 ?? const TextStyle();
  TextStyle get xHeadline3 => Theme.of(this).textTheme.headline3 ?? const TextStyle();
  TextStyle get xHeadline4 => Theme.of(this).textTheme.headline4 ?? const TextStyle();
  TextStyle get xHeadline5 => Theme.of(this).textTheme.headline5 ?? const TextStyle();
  TextStyle get xSubtitle1 => Theme.of(this).textTheme.subtitle1 ?? const TextStyle();
  TextStyle get xSubtitle2 => Theme.of(this).textTheme.subtitle2 ?? const TextStyle();
  TextStyle get xBodyText1 => Theme.of(this).textTheme.bodyText1 ?? const TextStyle();
  TextStyle get xBodyText2 => Theme.of(this).textTheme.bodyText2 ?? const TextStyle();

  Color get xPrimaryColor => Theme.of(this).colorScheme.primary;
  Color get xSecondaryColor => Theme.of(this).colorScheme.secondary;
  Color get xScaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get xDividerColor => Theme.of(this).dividerColor;
  Color get xTransparentColor => Theme.of(this).colorScheme.surface;
  Color get xLight => Theme.of(this).colorScheme.background;
  Color get xDark => Theme.of(this).colorScheme.onBackground;
  Color get xWhite => Theme.of(this).colorScheme.onPrimary;
  Color get xMedium => Theme.of(this).dividerColor;

  double get xWidth => MediaQuery.of(this).size.width;
  double get xHeight => MediaQuery.of(this).size.height;
}

const String extContext = "false";
