import 'package:duaya_app/common/widgets/custom_button/custom_button_with_icon.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomContainerProduct extends StatelessWidget {
   CustomContainerProduct({Key? key, required this.productImage, required this.productName, required this.companyName,required this.rete}) : super(key: key);
   String productImage,productName,companyName;
   double rete;

   _buildRatingStars(int rating){
     String stars ='';
     for(int i=0;i<rating ;i++){
       stars +='⭐ ';
     }
     stars.trim();
     return Text(stars);
   }

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: DSizes.spaceBtwTexts * 2, horizontal: DSizes.spaceBtwTexts),
        decoration: BoxDecoration(
          color: DColors.white,
          borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwTexts),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
                    color: DColors.error2
                  ),
                  child: Center(child: Text("-15%",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.white),)),
                ),
                const Spacer(),
                const Icon(Icons.favorite_border)
                
              ],
            ),
            SizedBox(height: DSizes.spaceBtwTexts),
            Image.asset(productImage),
            Text(productName,style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis)),
            SizedBox(height: DSizes.spaceBtwTexts),
            Text("form : $companyName",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2,fontSize: 12.sp)),
            SizedBox(height: DSizes.spaceBtwTexts),
            Row(
              children: [
                _buildRatingStars(1),
                Text("$rete",style: Theme.of(context).textTheme.titleLarge),
                Text("(1045 Reviews)", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2,fontSize: 13.sp))
              ],
            ),
            SizedBox(height: DSizes.spaceBtwTexts),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$235.00",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.error2)),
                Text("\$355.00",style: Theme.of(context).textTheme.titleSmall!.copyWith(decoration: TextDecoration.lineThrough)),

              ],
            ),
            SizedBox(height: DSizes.spaceBtwItems),
           CustomButtonWithIcon(onTap: (){}, textButton: "Add to cart",widget: const Icon(Iconsax.shopping_cart,color: DColors.white,),width:width / 2.7,height: DSizes.imageSize * 1.1,color: DColors.primary,),
          ],
        ),
      ),
    );
  }
}
