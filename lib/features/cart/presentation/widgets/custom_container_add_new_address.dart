import 'package:duaya_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerAddNewAddress extends StatelessWidget {
  const CustomContainerAddNewAddress({Key? key, this.onTap}) : super(key: key);
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            width: 2.w,
            color: DColors.primary,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No address have been added",style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 10.h),
            Icon(Icons.add,size: 25.sp)
          ],
        ),
      ),
    );
  }
}
