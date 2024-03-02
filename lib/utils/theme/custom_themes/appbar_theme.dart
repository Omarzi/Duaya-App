import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/exports.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DAppBarTheme {
  DAppBarTheme._();

  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: DColors.black, size: DSizes.iconMd),
    actionsIconTheme: IconThemeData(color: DColors.black, size: DSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: DColors.black),
  );

  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: DColors.white, size: DSizes.iconMd),
    actionsIconTheme: IconThemeData(color: DColors.white, size: DSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: DColors.white),
  );
}