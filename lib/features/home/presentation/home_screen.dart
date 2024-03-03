import 'package:duaya_app/features/home/presentation/widgets/custom_category/custom_category.dart';
import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_product.dart';
import 'package:duaya_app/features/home/presentation/widgets/custom_slider/custom_slider.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(DSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Slider
            const CustomSlider(),
            /// Make Space
            SizedBox(height: DSizes.spaceBtwItems),
            /// Category
            Row(
              children: [
                Text("Categories",
                    style: Theme.of(context).textTheme.titleLarge),
                Spacer(),
                Text("see all", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.primary)),
                Icon(Icons.arrow_forward_ios,size: 15.sp,color: DColors.grey2,)
              ],
            ),
            /// Make Space
            SizedBox(height: DSizes.spaceBtwItems *2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCategoryInHome(
                    categoryImage: DImages.medicine, categoryName: "Medicine"),
                CustomCategoryInHome(
                    categoryImage: DImages.medicalSupplies,
                    categoryName: "Medical Supplies"),
                CustomCategoryInHome(
                    categoryImage: DImages.beautyTools,
                    categoryName: "Beauty Tools"),
              ],
            ),
            /// Make Space
            SizedBox(height: DSizes.spaceBtwItems *2),
            /// Best Offers
            Text("Best Offers",
                style: Theme.of(context).textTheme.titleLarge
            ),
            /// Make Space
            SizedBox(height: DSizes.spaceBtwItems *2),
            GridView.builder(
            //  padding:  EdgeInsets.only(left:DSizes.spaceBetweenIcon ,right: DSizes.spaceBetweenIcon,),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10.h,childAspectRatio: 1/2.2,),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                 return GestureDetector(
                     onTap: (){context.pushNamed(DRoutesName.detailsProductRoute);},
                     child: CustomContainerProduct(productImage: DImages.product,productName: "Panadol Extra",companyName: "gsk company",rete: 4.5,));
              },
            ),
          ],
        ),
      ),
    );
  }
}
