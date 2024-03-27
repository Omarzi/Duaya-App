import 'package:duaya_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerAddress extends StatelessWidget {
  const CustomContainerAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: DColors.error2,
          width: 2.w
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text("Address",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey4,fontSize: 14.sp))),
              SizedBox(width: 40.w),
              Expanded(
                flex: 2,
                  child: Text("Address",style: Theme.of(context).textTheme.titleSmall)),
              CircleAvatar(
                radius: 12.r,
                backgroundColor: Colors.green,
                child: Center(
                  child: Icon(Icons.check,size: 15.sp,color: DColors.white),
                ),
              )

            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text("City",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey4,fontSize: 14.sp))),
              SizedBox(width: 40.w),
              Expanded(
                  flex: 2,
                  child: Text("City",style: Theme.of(context).textTheme.titleSmall)),

            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text("governorate",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey4,fontSize: 14.sp))),
              SizedBox(width: 40.w),
              Expanded(
                  flex: 2,
                  child: Text("governorate",style: Theme.of(context).textTheme.titleSmall)),

            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text("Country",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey4,fontSize: 14.sp))),
              SizedBox(width: 40.w),
              Expanded(
                  flex: 2,
                  child: Text("Country",style: Theme.of(context).textTheme.titleSmall)),

            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text("Phone",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey4,fontSize: 14.sp))),
              SizedBox(width: 40.w),
              Expanded(
                  flex: 2,
                  child: Text("Phone",style: Theme.of(context).textTheme.titleSmall)),

            ],
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
