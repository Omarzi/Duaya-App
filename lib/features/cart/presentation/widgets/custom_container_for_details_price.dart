import 'package:duaya_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerForDetailsPrice extends StatelessWidget {
  const CustomContainerForDetailsPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: DColors.primary.withOpacity(0.4),
        
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total amount",style: Theme.of(context).textTheme.titleSmall),
              const Text("500.EGP"),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Minimum order",style: Theme.of(context).textTheme.titleSmall),
              const Text("300"),
            ],
          ),
        ],
      ),
    );
  }
}
