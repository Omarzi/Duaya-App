import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_product.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_time_left_in_flash_sale.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(DSizes.padding),
        child: Column(
          children: [
            /// Make Space
            SizedBox(height: DSizes.spaceBtwItems),

            const CustomTimeLeftInFlashSale(),

            /// Make Space
            SizedBox(height: DSizes.spaceBtwItems * 3),

            /// Products
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10.h,childAspectRatio: 1/2.2,),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => context.pushNamed(DRoutesName.detailsProductRoute),
                  child: const CustomContainerProduct(productImage: DImages.product,productName: "Panadol Extra",companyName: "ODC Company.", rete: 4.5),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}
