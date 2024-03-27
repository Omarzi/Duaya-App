import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomComponentLanguage extends StatelessWidget {
   CustomComponentLanguage({Key? key, required this.borderColor, required this.language, required this.onTap}) : super(key: key);
Color borderColor;
String language;
VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width / 1.5,
        margin: EdgeInsets.symmetric(vertical: DSizes.spaceBtwItems / 2),
        padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems * 1.5,vertical: DSizes.spaceBtwItems / 1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DSizes.borderRadiusSm),
          border: Border.all(
            color: borderColor,
          ),

        ),
        child: Text(language, style:  Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
