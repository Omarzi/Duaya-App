import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/exports.dart';

class DSocialButtons extends StatelessWidget {
  const DSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: DColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: DSizes.iconMd,
              height: DSizes.iconMd,
              image: const AssetImage(DImages.google),
            ),
          ),
        ),

        /// Make Some Space
        SizedBox(width: DSizes.spaceBtwItems),

        /// Facebook Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: DColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: DSizes.iconMd,
              height: DSizes.iconMd,
              image: const AssetImage(DImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
