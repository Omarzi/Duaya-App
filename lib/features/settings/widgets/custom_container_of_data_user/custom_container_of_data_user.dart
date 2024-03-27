import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomContainerOfDataUser extends StatelessWidget {
  const CustomContainerOfDataUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal:DSizes.spaceBtwItems, vertical:DSizes.spaceBtwItems),
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
      child: Row(
        children: [
          CircleAvatar(
            radius: 27.r,
            backgroundColor: DColors.white,
            child: CircleAvatar(
              radius: 25.r,
              backgroundColor:DColors.primary.withOpacity(0.6),
              child: Center(
                child:Text('OA', style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 16.sp, color: DColors.white)),
              ),
            ),
          ),
          SizedBox(width: DSizes.spaceBtwItems),
          Column(
            children: [
              Text('Omar Abdelaziz', style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 16.sp, color: DColors.white)),
              SizedBox(height: DSizes.spaceBtwItems / 2),
              Text('@OmarZizo', style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 16.sp, color: DColors.white)),

            ],
          ),
           const Spacer(),
          Icon(Iconsax.edit,color: DColors.white,size: 20.sp)


        ],
      ),
    );
  }
}
