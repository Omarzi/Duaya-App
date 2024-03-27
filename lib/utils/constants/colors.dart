import 'package:flutter/material.dart';

class DColors {
  DColors._();

  /// App Basic Colors
  // static const Color primary = Color(0xFF004aad);
  static const Color primary = Color(0xFF2fac66);
  static const Color primaryDark = Colors.blueGrey;
  static const Color accent = Color(0xFFB0C7FF);
  static const Color gold = Color(0xffDDB351);
  static const Color silver = Color(0xff9C9C9C);
  static const Color whiteLevel = Color(0xffEBEBEB);
  static const Color blueColor = Color(0xff358FE1);
  static const Color appBarColor = Color(0xffdf5346);

  /// Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );

  /// Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  ///Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  ///Background Container Color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static final Color darkContainer = DColors.white.withOpacity(0.1);

  ///Button Colors
  static const Color buttonPrimary = Color(0xFF2fac66);
  static const Color buttonSecondary = Color(0xFF076633);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  /// Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);
  static const Color borderTextFormField = Color(0xFFECECEC);

  /// Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color error2 = Color(0xFFB33630);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  /// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color grey2 = Color(0xFF7C7C7C);
  static const Color grey3 = Color(0xFFf6f4f7);
  static const Color grey4 = Color(0xFFbab7ba);
  static const Color bgColorOfCategoryComponent = Color(0xFFFCFCFC);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;
}
