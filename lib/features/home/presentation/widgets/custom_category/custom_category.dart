import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryInHome extends StatelessWidget {
  final String categoryImage,categoryName;

  const CustomCategoryInHome({Key? key, required this.categoryImage,required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: DColors.grey3,
          child: Center(child: Image.asset(categoryImage,width: 30.w)),
        ),
        Text(categoryName,style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500)),
        Text("60 Item",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.grey2.withOpacity(.5), fontSize: 14.sp))
      ],
    );
  }
}
