import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerMinusAndPlus extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final double borderWidth;

  const CustomContainerMinusAndPlus({Key? key, required this.icon, required this.onTap, required this.padding, required this.iconSize, required this.borderWidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DSizes.borderRadiusLg * 1.5),
          border: Border.all(
            width: borderWidth,
            color: DColors.primary
          )
        ),
        child: Center(
          child: Icon(icon, size: iconSize, color: DColors.primary,),
        ),
      ),
    );
  }
}
