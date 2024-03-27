import 'package:duaya_app/common/widgets/button/custom_button_major_in_app.dart';
import 'package:duaya_app/features/cart/presentation/widgets/custom_container_for_details_price.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationInPayment extends StatelessWidget {
  const CustomBottomNavigationInPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
                color: DColors.grey,
              width: 2.w
            ),
          ),
          child: Row(
            children: [
               Expanded(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter the coupon code",
                      hintStyle: TextStyle(fontSize: 13.sp,color: DColors.grey4),
                      border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10)

                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: DColors.primary,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15.r),bottomRight: Radius.circular(15.r))
                  ),
                  child:  Center(
                    child: Text("Coupon application",style: TextStyle(color: DColors.white,fontSize: 10.sp)),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15.h),
        const CustomContainerForDetailsPrice(),
        SizedBox(height: 15.h),
         CustomButtonMajorInApp(text: "Send the request",onPressed: (){})
      ],
    );
  }
}
