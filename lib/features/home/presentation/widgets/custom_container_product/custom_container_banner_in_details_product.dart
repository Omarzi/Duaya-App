import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomContainerBannerInDetailsProduct extends StatelessWidget {
  CustomContainerBannerInDetailsProduct({Key? key}) : super(key: key);
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(5, (index) => Center(child: Image.asset(DImages.product,width: DSizes.imageSize * 4)));

    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: DSizes.spaceBtwItems * 1.5, horizontal: DSizes.spaceBtwItems),
        decoration: BoxDecoration(
          color: DColors.white,
          borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        ),
        child: Column(
          children: [
            /// Product Image
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: DSizes.spaceBtwTexts * 2),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwTexts),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(DSizes.borderRadiusLg), color: DColors.error2),
                    child: Center(child: Text("-15%",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.white, fontSize: 15.sp))),
                  ),
                  const Spacer(),
                  Icon(Iconsax.heart, size: 23.sp)
                ],
              ),
            ),

            /// Circles
            SizedBox(
              height: 150.h,
              child: PageView.builder(
                controller: controller,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            SizedBox(height: DSizes.spaceBtwItems),

            Container(
              padding: EdgeInsets.all(DSizes.spaceBtwTexts * 1.2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
                color: DColors.grey2.withOpacity(0.4)
              ),
              child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect:  WormEffect(
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                    activeDotColor: DColors.white,
                  dotColor: DColors.grey
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
