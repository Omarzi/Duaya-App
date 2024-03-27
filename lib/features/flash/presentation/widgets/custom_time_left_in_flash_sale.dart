import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTimeLeftInFlashSale extends StatelessWidget {
  const CustomTimeLeftInFlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(DSizes.padding),
        decoration: BoxDecoration(
          color: DColors.white,
          borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        ),
        child: Column(
          children: [
            SizedBox(height: DSizes.defaultSpace / 2),

            Text('There is Time Left', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp, fontWeight: FontWeight.w600)),
            SizedBox(height: DSizes.defaultSpace * 2),

            /// Times
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('01', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),
                    SizedBox(height: DSizes.defaultSpace / 2),
                    Text('Hours', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),
                  ],
                ),

                Text(':', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),

                Column(
                  children: [
                    Text('40', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),
                    SizedBox(height: DSizes.defaultSpace / 2),
                    Text('Minute', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),
                  ],
                ),

                Text(':', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),

                Column(
                  children: [
                    Text('20', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),
                    SizedBox(height: DSizes.defaultSpace / 2),
                    Text('Second', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.primary, height: .5.h, fontSize: 16.sp)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
