import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomComponentForBrand extends StatelessWidget {
   CustomComponentForBrand({Key? key, required this.brandImage ,required this.brandTitle, this.onTap}) : super(key: key);
  String brandImage, brandTitle;
   void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems,vertical: DSizes.spaceBtwTexts * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems,vertical: DSizes.spaceBtwTexts * 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
                  border: Border.all(
                      color: DColors.primary,
                      width: 0.5.w
                  )
              ),
              child: Image.asset(brandImage,width: DSizes.imageSize * 3, height: DSizes.padding * 3 ),
            ),
            SizedBox(height: DSizes.spaceBtwTexts),
            Text(brandTitle),
          ],
        ),
      ),
    );
  }
}
