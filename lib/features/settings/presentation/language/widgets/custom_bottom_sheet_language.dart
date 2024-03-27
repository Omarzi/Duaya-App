import 'package:duaya_app/features/settings/presentation/language/widgets/custom_component_language.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomBottomSheetLanguage extends StatefulWidget {
  const CustomBottomSheetLanguage({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetLanguage> createState() => _CustomBottomSheetLanguageState();
}

class _CustomBottomSheetLanguageState extends State<CustomBottomSheetLanguage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    bool isTagle = false;
    return Container(
      height: height / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Select Language",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.primary)),
          SizedBox(height:  DSizes.spaceBtwItems),
          CustomComponentLanguage(borderColor: isTagle == true ? DColors.error2 : DColors.primary, language: "Arabic", onTap: (){setState(() {
            isTagle = true ;
          });}),
          CustomComponentLanguage(borderColor: isTagle == false ? DColors.error2 : DColors.primary, language: "English", onTap: (){setState(() {
            isTagle = false ;
          });}),
        ],
      ),
    );
  }
}
