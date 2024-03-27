import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerRemainingUploads extends StatelessWidget {
  const CustomContainerRemainingUploads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height/5.5,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: DSizes.spaceBtwItems * 1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        color: DColors.primary.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: DColors.black.withOpacity(.3),
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(1.w, 1.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Text('Remaining Uploads', style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 20.sp, color: DColors.white)),
          const Spacer(),
          Text('40', style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 20.sp, color: DColors.white)),

        ],
      ),
    );
  }
}
