import 'package:duaya_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/constants/sizes.dart';


class CustomButtonWithIcon extends StatelessWidget {
  CustomButtonWithIcon({Key? key,required this.onTap, required this.textButton,this.widget,this.width,this.height,this.color}) : super(key: key);
  VoidCallback onTap;
  String textButton;
  double? width=300.w;
  double? height=DSizes.imageSize / 1.6;
  Widget? widget;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(DSizes.borderRadiusLg *2),
          ),
          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(textButton, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.white, height: .5.h),
                ),
                // SizedBox(width: DSizes.spaceBtwTexts *2),
                // Icon(icon,color: DColors.white,)
                SizedBox(child: widget)

              ],
            ),
          )
      ),
    );
  }
}
