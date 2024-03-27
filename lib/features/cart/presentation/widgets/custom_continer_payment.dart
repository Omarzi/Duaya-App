import 'package:duaya_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerPayment extends StatelessWidget {
  const CustomContainerPayment({Key? key, required this.paymentName, required this.onTap, required this.isTagel}) : super(key: key);
 final String paymentName;
 final VoidCallback onTap;
 final  bool isTagel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Container(
        width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),
            color: DColors.white,
            border: Border.all(
              color: isTagel ? DColors.primary : DColors.white,
              width: isTagel ? 2.w : 0.w,
            )
          ),
          child: Row(
            children: [
              Container(
                height: 70.h,
                width: 70.w,
                color:DColors.grey,
                child: const Center(child: Icon(Icons.shopify_outlined,color: DColors.grey2,)),
              ),
              SizedBox(width: 20.w),
              SizedBox(
                width: 180.w,
                  child: Text(paymentName,style: Theme.of(context).textTheme.titleSmall)),
              isTagel ? CircleAvatar(
                radius: 12.r,
                backgroundColor: Colors.green,
                child: Center(
                  child: Icon(Icons.check,size: 15.sp,color: DColors.white),
                ),
              ) : Container(),
            ],
          ),

        ),
      ),
    );
  }
}
