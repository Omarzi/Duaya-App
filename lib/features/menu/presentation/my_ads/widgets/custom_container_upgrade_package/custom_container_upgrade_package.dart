import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomContainerUpgradePackage extends StatelessWidget {
  const CustomContainerUpgradePackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: DSizes.spaceBtwTexts * 2),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(DSizes.spaceBtwItems),
          decoration: BoxDecoration(
            color: DColors.white,
            borderRadius: BorderRadius.circular(DSizes.borderRadiusLg * 1.5),
            border: Border.all( color: DColors.error2),
          ),
          child: Row(
            children: [
              const Icon(Iconsax.crown1, color: DColors.error2),
              SizedBox(width: DSizes.spaceBtwTexts * 1.5),
              Text("Upgrade Package", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.error2)),
              const Spacer(),
              const Icon(Icons.arrow_forward, color: DColors.error2),
            ],
          ),
        ),
      ),
    );
  }
}
