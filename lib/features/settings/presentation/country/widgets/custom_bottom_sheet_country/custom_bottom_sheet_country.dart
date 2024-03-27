import 'package:duaya_app/features/settings/presentation/country/widgets/custom_bottom_sheet_country/custom_component_country.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomBottomSheetCountry extends StatefulWidget {
  const CustomBottomSheetCountry({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetCountry> createState() => _CustomBottomSheetCountryState();
}

class _CustomBottomSheetCountryState extends State<CustomBottomSheetCountry> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Select Country",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.primary)),
          SizedBox(height:  DSizes.spaceBtwItems),
         const CustomComponentCountry(countryName: "Saudi Arabia", imageCountry: DImages.saudiFlag),
         const CustomComponentCountry(countryName: "Palestine", imageCountry: DImages.palestineFlag),
         const CustomComponentCountry(countryName: "Egypt", imageCountry: DImages.egyptFlag),
         const CustomComponentCountry(countryName: "Bahrain", imageCountry: DImages.bahrainFlag),
        ],
      ),
    );
  }
}
