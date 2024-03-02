import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DTermsAndConditionCheckbox extends StatelessWidget {
  const DTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24.w,
            height: 24.h,
            child: Checkbox(value: true, onChanged: (value) {})),
        SizedBox(width: DSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'I agree to ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Privacy Policy ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? DColors.white : DColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                      dark ? DColors.white : DColors.primary,
                    )),
                TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Terms of use',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? DColors.white : DColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                        dark ? DColors.white : DColors.primary,
                        overflow: TextOverflow.clip)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
