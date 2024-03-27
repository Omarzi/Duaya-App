import 'package:duaya_app/features/home/presentation/widgets/custom_category/custom_category.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryBody extends StatelessWidget {
  const CustomCategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 20.h),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) {
        return CustomCategoryInHome(
            categoryImage: DImages.beautyTools,
            categoryName: "Beauty Tools");
      },
    );
  }
}
