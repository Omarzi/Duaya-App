import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerMenu extends StatelessWidget {
final  IconData iconData;
final  String text;
  const CustomContainerMenu({Key? key,required this.text, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: DSizes.defaultSpace / 2),
      elevation: 3,
        color:  DColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
        ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(DSizes.spaceBtwTexts),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundColor: DColors.primary,
                child: Icon(iconData,size: 23.sp,color: DColors.white),
              ),
              SizedBox(height: DSizes.spaceBtwTexts * 1.2),
              Text(text,style: Theme.of(context).textTheme.titleSmall!.copyWith(overflow: TextOverflow.ellipsis)),
            ],
          ),
        ),
      ),
    );
  }
}
