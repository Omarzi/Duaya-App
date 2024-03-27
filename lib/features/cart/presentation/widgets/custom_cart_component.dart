import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_minus_and_plus.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/constants.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCartComponent extends StatefulWidget {
  const CustomCartComponent({super.key});

  @override
  State<CustomCartComponent> createState() => _CustomCartComponentState();
}

class _CustomCartComponentState extends State<CustomCartComponent> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: DColors.white,
          borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        ),
        child: Row(
          children: [
            /// Product Image
            Image.asset(DImages.product, height: DSizes.imageSize * 2.6),

            /// Product Info
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Panadol Extra', style: Theme.of(context).textTheme.bodySmall!, overflow: TextOverflow.ellipsis),
                SizedBox(height: DSizes.spaceBtwTexts),

                Text("Form : ODC Company",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2, fontSize: 12.sp)),
                SizedBox(height: DSizes.spaceBtwTexts),

                /// Ratting.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DConstants.buildRatingStars(1),
                    Text('4.5', style: Theme.of(context).textTheme.displaySmall!.copyWith(color: DColors.black, fontWeight: FontWeight.w600, fontSize: 12.sp)),
                    Text(" (1045 Reviews)", style: Theme.of(context).textTheme.displaySmall!.copyWith(color: DColors.grey2,fontSize: 12.sp))
                  ],
                ),
                SizedBox(height: DSizes.spaceBtwTexts),

                /// Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("\$235.00 ", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.error2, fontSize: 14.sp), overflow: TextOverflow.ellipsis),
                    Text("\$355.00", style: Theme.of(context).textTheme.titleSmall!.copyWith(decoration: TextDecoration.lineThrough, fontSize: 13.sp), overflow: TextOverflow.ellipsis),
                  ],
                ),
              ],
            ),

            const Spacer(),

            /// Add And Minus
            Padding(
                padding: EdgeInsets.only(right: width / 30),
                child: Column(
                  children: [
                    CustomContainerMinusAndPlus(
                      icon: Icons.add,
                      onTap: () => setState(() => count++),
                      padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems / 2,vertical: 2.h),
                      iconSize: 20.sp,
                      borderWidth: 1.w,
                    ),
                    SizedBox(height: DSizes.defaultSpace / 2.5),
                    Text("$count", style: Theme.of(context).textTheme.displaySmall!.copyWith(color: DColors.black, fontWeight: FontWeight.w600, fontSize: 12.sp)),
                    SizedBox(height: DSizes.defaultSpace / 2.5),
                    CustomContainerMinusAndPlus(
                      icon: Icons.remove,
                      onTap: () => setState(() {
                        if(count <= 1) {
                          FloatingSnackBar(
                            message: 'You cannot decrease more than 1.',
                            context: context,
                            textColor: DColors.white,
                            textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: DColors.white),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: DColors.primary,
                          );
                        } else {
                          count--;
                        }
                      }),
                      padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems / 2,vertical: 2.h),
                      iconSize: 20.sp,
                      borderWidth: 1.w,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
