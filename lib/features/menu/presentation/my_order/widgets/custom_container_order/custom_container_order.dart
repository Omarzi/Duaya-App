import 'package:duaya_app/common/widgets/custom_button/custom_button_with_icon.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerOrder extends StatelessWidget {
  const CustomContainerOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwTexts),
      padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems, vertical: DSizes.spaceBtwItems * 1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        color: DColors.grey3,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('On the wat to you', style: Theme.of(context).textTheme.titleMedium!.copyWith( color: DColors.primary)),
              Text('\$235,00', style: Theme.of(context).textTheme.titleLarge!.copyWith( color: DColors.error2)),
            ],
          ),
          SizedBox(height: DSizes.spaceBtwTexts),
          Text('Bill NO.23455-64327', style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 20.sp, color: DColors.black)),
          SizedBox(height: DSizes.spaceBtwTexts),
          Text('ordered 20/11/2023', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.black)),
          SizedBox(height: DSizes.spaceBtwItems * 1.5),
          Text('payment status:', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.silver)),
          SizedBox(height: DSizes.spaceBtwTexts),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment When receiving', style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15.sp, color: DColors.black)),
              CustomButtonWithIcon(onTap: (){}, textButton: "Details",color: DColors.primary,height: DSizes.spaceBtwItems * 2.5,width: DSizes.padding * 6, borderColor: Colors.transparent, textButtonColor: DColors.white, isAddToCart: true),
            ],
          )

        ],
      ),
    );
  }
}
