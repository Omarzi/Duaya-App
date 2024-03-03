import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerMinusAndPlus extends StatelessWidget {
   CustomContainerMinusAndPlus({Key? key, required this.icon, required this.onTap}) : super(key: key);
  IconData icon;
   VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems,vertical: DSizes.spaceBtwTexts),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DSizes.borderRadiusLg * 1.5),
          border: Border.all(
            width: 2.w,
            color: DColors.primary
          )
        ),
        child: Center(
          child: Icon(icon,size: 40.sp,color: DColors.primary,),
        ),
      ),
    );
  }
}
