import 'package:duaya_app/common/widgets/custom_button/custom_button_with_icon.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationInProduct extends StatelessWidget {
  const CustomBottomNavigationInProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.width;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems /1.5),
      height: height / 4,
      child: Row(
        children: [

          CustomButtonWithIcon(textButton: "Add To Cart",width: width / 2.5,color: DColors.primary, onTap: () {},height: DSizes.imageSize * 1.4),
          const Spacer(),
          CustomButtonWithIcon(textButton: "Buy Now",width: width / 2.5,color: DColors.error2, onTap: () {},height: DSizes.imageSize * 1.4),

        ],
      ),
    );
  }
}
