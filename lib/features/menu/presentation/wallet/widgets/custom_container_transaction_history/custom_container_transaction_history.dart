import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerTransactionHistory extends StatelessWidget {
  const CustomContainerTransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: DSizes.spaceBtwTexts * 2),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(DSizes.spaceBtwItems),
          decoration: BoxDecoration(
            color: DColors.white,
            boxShadow: [
              BoxShadow(
                color: DColors.black.withOpacity(.2),
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(1.w, 1.h),
              ),
            ],
            borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
            border: Border.all(
                width: 0.5.w,
                color: DColors.grey),
          ),
          child: Row(
            children: [
              Text("Transaction History",style: Theme.of(context).textTheme.titleLarge),
              const Spacer(),
              Text("view all",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.silver, fontSize: 15.sp)),
              Icon(Icons.arrow_forward_ios,size: 17.sp,color:  DColors.silver),
            ],
          ),
        ),
      ),
    );
  }
}
