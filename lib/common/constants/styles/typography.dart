import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class MyTypography {
  static TextStyle headline1 = GoogleFonts.poppins(
    fontSize: 42,
    fontWeight: FontWeight.w500,
    color: MyColor.dark,
  );
  static TextStyle headline2 = GoogleFonts.poppins(
    fontSize: 36,
    fontWeight: FontWeight.w300,
    color: MyColor.dark,
  );
  static TextStyle headline3 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: MyColor.dark,
  );
  static TextStyle headline4 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: MyColor.dark,
  );
  static TextStyle headline5 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: MyColor.dark,
  );

  static TextStyle body1 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: MyColor.dark,
  );
  static TextStyle body2 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: MyColor.dark,
  );

  static TextStyle subtitle1 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: MyColor.dark,
  );
  static TextStyle subtitle2 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: MyColor.dark,
  );
}
