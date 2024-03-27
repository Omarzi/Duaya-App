import 'package:duaya_app/common/widgets/custom_button/custom_button_with_icon.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/constants.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomContainerProduct extends StatelessWidget {
  final String productImage,productName,companyName;
  final double rete;
  const CustomContainerProduct({Key? key, required this.productImage, required this.productName, required this.companyName,required this.rete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: DSizes.spaceBtwTexts * 2, horizontal: DSizes.spaceBtwTexts),
        decoration: BoxDecoration(color: DColors.white, borderRadius: BorderRadius.circular(DSizes.borderRadiusLg)),
        child: Column(
          children: [
            /// Presetage - Heart.
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwTexts),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
                    color: DColors.error2
                  ),
                  child: Center(child: Text("-15%",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.white, fontSize: 14.sp))),
                ),
                const Spacer(),
                Icon(Iconsax.heart, size: 23.sp)
                
              ],
            ),
            SizedBox(height: DSizes.spaceBtwTexts),

            /// Product Image.
            Image.asset(productImage),

            /// Product Name.
            Text(productName,style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis)),
            SizedBox(height: DSizes.spaceBtwTexts),

            /// Company Name
            Text("Form : $companyName",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2, fontSize: 12.sp)),
            SizedBox(height: DSizes.spaceBtwTexts),

            /// Ratting.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DConstants.buildRatingStars(1),
                Text("$rete",style: Theme.of(context).textTheme.titleLarge),
                Text(" (1045 Reviews)", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2,fontSize: 13.sp))
              ],
            ),
            SizedBox(height: DSizes.spaceBtwTexts * 2),

            /// Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$235.00",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.error2, fontSize: 15.sp)),
                Text("\$355.00",style: Theme.of(context).textTheme.titleSmall!.copyWith(decoration: TextDecoration.lineThrough, fontSize: 15.sp)),

              ],
            ),
            SizedBox(height: DSizes.spaceBtwItems / 1.2),

           /// Add to cart.
           CustomButtonWithIcon(
             onTap: (){},
             textButton: "Add to cart",
             widget: const Icon(Iconsax.shopping_cart,color: DColors.white),
             width: double.infinity,
             height: DSizes.imageSize * 1.1,
             color: DColors.primary,
             borderColor: Colors.transparent,
             textButtonColor: Colors.white,
             isAddToCart: true,
           ),
          ],
        ),
      ),
    );
  }
}
