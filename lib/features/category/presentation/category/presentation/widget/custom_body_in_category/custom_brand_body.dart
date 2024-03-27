import 'package:duaya_app/features/category/presentation/category/presentation/widget/custom_component_for_brand/custom_component_for_brand.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/constants.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBrandBody extends StatelessWidget {
  const CustomBrandBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 20.h),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) {
        return CustomComponentForBrand(brandImage: DConstants.brandImage[index], brandTitle: DConstants.brandTitle[index], onTap: () => context.pushNamed(DRoutesName.companyDetailsRoute, arguments: {
          'title': DConstants.brandTitle[index],
          'logo': DConstants.brandImage[index],
        }));
      },
    );
  }
}
