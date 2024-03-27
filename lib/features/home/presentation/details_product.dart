import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_banner_in_details_product.dart';
import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_minus_and_plus.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/constants.dart';
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
    const DetailsProduct({Key? key}) : super(key: key);

  @override
  State<DetailsProduct> createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text("Duaya",style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        showBackArrow: true,
        // leadingWidget: const Icon(Icons.arrow_back_ios),
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

              /// Product (Name - Rate).
              Row(
                children: [
                  Text("Panadol Extra",style: Theme.of(context).textTheme.titleLarge),
                  const Spacer(),
                  DConstants.buildRatingStars(1),
                  Text("4.5",style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
              SizedBox(height: DSizes.spaceBtwItems),
              /// Company Name
              Row(
                children: [
                  Text("From : ODC Company",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2, fontSize: 14.sp)),
                  const Spacer(),
                  Text("(1045 Reviews)", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2, fontSize: 14.sp))
                ],
              ),
              SizedBox(height: DSizes.spaceBtwItems),

              /// Price
              Row(
                children: [
                  Text("\$235.00",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.error2, fontSize: 15.2.sp)),
                  SizedBox(width: DSizes.spaceBtwTexts * 2),
                  Text("\$355.00",style: Theme.of(context).textTheme.titleSmall!.copyWith(decoration: TextDecoration.lineThrough, fontSize: 15.2.sp)),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems,vertical: DSizes.spaceBtwTexts * 2),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(DSizes.borderRadiusLg), color: DColors.warning.withOpacity(0.4)),
                    child: Row(
                      children: [
                        Image.asset(DImages.dollarIcon,width: DSizes.imageSize / 2.1),
                        SizedBox(width: DSizes.spaceBtwTexts),
                        Text("Points",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.warning.withOpacity(0.5), fontSize: 15.sp)),
                        SizedBox(width: DSizes.spaceBtwTexts),
                        Text("50",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.warning.withOpacity(0.5)))
                      ],
                    ),
                  ),
                ],
              ),
              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems),

              /// Add and Minus
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomContainerMinusAndPlus(icon: Iconsax.minus,onTap: () => setState(() => count--), padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems,vertical: DSizes.spaceBtwTexts), iconSize: 40.sp, borderWidth: 2.w),
                  ),
                  Expanded(
                    flex: 4,
                    child: Center(child: Text("$count",style: Theme.of(context).textTheme.headlineMedium)),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomContainerMinusAndPlus(icon: Iconsax.add,onTap: () => setState(() => count++), padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems,vertical: DSizes.spaceBtwTexts), iconSize: 40.sp, borderWidth: 2.w),
                  ),
                ],
              ),
              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems * 1.5),
              Text("Also Available In :",style: Theme.of(context).textTheme.titleLarge),

              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems * 2),
              /// Sum Product
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10.h,childAspectRatio: 1/2.2,),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: (){context.pushNamed(DRoutesName.detailsProductRoute);},
                      child: const CustomContainerProduct(productImage: DImages.product,productName: "Panadol Extra",companyName: "ODC Company",rete: 4.5));
                },
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationInProduct(
        colorOfButton1: DColors.primary,
        colorOfButton2: DColors.error,
        textOfButton1: 'Add To Cart',
        onTap1: () => context.pushNamed(DRoutesName.addNewAddressRoute),
        onTap2: () {
          const snackBar =  SnackBar(
            backgroundColor: DColors.error,
            content: Text('You cannot buy for less than 300 pounds'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        textOfButton2: 'Buy Now',
        colorOfBorderOfButton1: Colors.transparent,
        colorOfBorderOfButton2: Colors.transparent,
        textButton1Color: DColors.white,
        textButton2Color: DColors.white,
        isCart: false,
      ),
    );
  }
}
