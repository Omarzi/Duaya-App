import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/device/device_utility.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/exports.dart';

class CustomButtonMajorInApp extends StatelessWidget {
  const CustomButtonMajorInApp({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: DDeviceUtils.getScreenWidth(context) * .06),
      width: double.infinity, height: 50.h, child: ElevatedButton(onPressed: () => context.pushReplacementNamed(DRoutesName.navigationMenuRoute), child: Text(text, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.white, height: .5.h),)),
    );
  }
}
