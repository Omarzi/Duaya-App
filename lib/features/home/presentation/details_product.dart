import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/common/widgets/custom_button/custom_button.dart';
import 'package:duaya_app/common/widgets/custom_button/custom_button_with_icon.dart';
import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_banner_in_details_product.dart';
import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_minus_and_plus.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../../../routing/routes_name.dart';
import 'widgets/custom_container_product/custom_bottom_navigation_in_product.dart';
import 'widgets/custom_container_product/custom_container_product.dart';

class DetailsProduct extends StatefulWidget {
    DetailsProduct({Key? key}) : super(key: key);

  @override
  State<DetailsProduct> createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
   _buildRatingStars(int rating){
     String stars ='';
     for(int i=0;i<rating ;i++){
       stars +='⭐ ';
     }
     stars.trim();
     return Text(stars);
   }

 int count = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: DAppBar(
        title: Text("Duaya",style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        leadingWidget: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Banner
              CustomContainerBannerInDetailsProduct(),
              SizedBox(height: DSizes.spaceBtwItems),
              Row(
                children: [
                  Text("Panadol Extra",style: Theme.of(context).textTheme.titleLarge),
                  const Spacer(),
                  _buildRatingStars(1),
                  Text("4.5",style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
              SizedBox(height: DSizes.spaceBtwItems),
              Row(
                children: [
                  Text("From : gsk company",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey,fontSize: 14.sp)),
                  const Spacer(),
                  Text("(1045 Reviews)", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey,fontSize: 14.sp))


                ],
              ),
              SizedBox(height: DSizes.spaceBtwItems),
              Row(
                children: [
                  Text("\$235.00",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.error2)),
                  SizedBox(width: DSizes.spaceBtwTexts),
                  Text("\$355.00",style: Theme.of(context).textTheme.titleSmall!.copyWith(decoration: TextDecoration.lineThrough)),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems,vertical: DSizes.spaceBtwTexts * 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
                        color: DColors.warning.withOpacity(0.4),

                    ),
                    child: Row(
                      children: [
                        Image.asset(DImages.dollarIcon,width: DSizes.imageSize / 2),
                        Text("Points",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.warning.withOpacity(0.5))),
                        SizedBox(width: DSizes.spaceBtwTexts),
                        Text("50",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.warning.withOpacity(0.5)))
                      ],
                    ),

                  )

                ],
              ),
              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems),
              /// Add and Minus
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomContainerMinusAndPlus(icon: Iconsax.minus,onTap: (){setState(() {count--; });}),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Center(child: Text("$count",style: Theme.of(context).textTheme.headlineMedium)),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomContainerMinusAndPlus(icon: Iconsax.add,onTap: (){setState(() {count++; });}),
                  ),
                ],
              ),
              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems * 1.5),
              Text("Also Available In :",style: Theme.of(context).textTheme.titleLarge),

              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems *2),
              /// Sum Product
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
      ),
      bottomNavigationBar: const CustomBottomNavigationInProduct(),

    );
  }
}
