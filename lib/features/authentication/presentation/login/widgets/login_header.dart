import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';

class DLoginHeader extends StatelessWidget {
  const DLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(dark ? DImages.appIcon : DImages.appIcon), height: MediaQuery.of(context).size.height / 8,),
        Text('Welcome back,', style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: DSizes.sm),
        Text('Discover Limitless Choice and Unmatched Convenience', style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
