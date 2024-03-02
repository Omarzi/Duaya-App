import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/exports.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/device/device_utility.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OSearchContainer extends StatelessWidget {
  const OSearchContainer({
    super.key, required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.height = 200,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: DDeviceUtils.getScreenWidth(context),
        height: height,
        padding: EdgeInsets.all(DSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? DColors.dark : DColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(DSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: dark ? DColors.dark : DColors.grey) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: dark ? DColors.lightGrey : DColors.darkGrey),
            SizedBox(width: DSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}