// import 'package:duaya_app/common/managers/language/language_cubit.dart';
// import 'package:duaya_app/utils/constants/colors.dart';
// import 'package:duaya_app/utils/constants/exports.dart';
// import 'package:duaya_app/utils/constants/sizes.dart';
// import 'package:duaya_app/utils/helpers/helper_functions.dart';
// import 'package:duaya_app/utils/language/language_helper.dart';
// import 'package:duaya_app/utils/local_storage/cache_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class ShowLanguageBottomSheet extends StatelessWidget {
//   const ShowLanguageBottomSheet({Key? key}) : super(key: key);
//
//   @override
//
//   Widget build(BuildContext context) {
//     final dark = DHelperFunctions.isDarkMode(context);
//
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: DSizes.spaceBtwItems),
//       child: Column(
//         children: [
//           /// Text
//           Text('languages'.tr(context), style: Theme.of(context).textTheme.titleMedium!.copyWith(decoration: TextDecoration.underline)),
//
//           /// Make Space
//           SizedBox(height: DSizes.defaultSpace),
//
//           /// English
//           InkWell(
//             onTap: () {
//               BlocProvider.of<LanguageCubit>(context).changeLanguage('en');
//               Navigator.pop(context);
//             },
//             borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
//             overlayColor: dark ? MaterialStateProperty.all(DColors.primaryBackground.withOpacity(.02)) : MaterialStateProperty.all(DColors.primary.withOpacity(.02)),
//             child: selectedLanguage('english'.tr(context), DCacheHelper.getCachedLanguage() == 'en' ? true : false, dark, context),
//           ),
//
//           /// Make Space
//           SizedBox(height: DSizes.defaultSpace),
//
//           /// Arabic
//           InkWell(
//             onTap: () {
//               BlocProvider.of<LanguageCubit>(context).changeLanguage('ar');
//               Navigator.pop(context);
//             },
//             borderRadius: BorderRadius.circular(DSizes.borderRadiusLg),
//             overlayColor: dark ? MaterialStateProperty.all(DColors.primaryBackground.withOpacity(.02)) : MaterialStateProperty.all(DColors.primary.withOpacity(.02)),
//             child: selectedLanguage('arabic'.tr(context), DCacheHelper.getCachedLanguage() == 'ar' ? true : false, dark, context),
//           )
//         ],
//       ),
//     );
//   }
//
//   /// Toggle Language
//   Widget selectedLanguage(String text, bool selected, bool dark, BuildContext context) {
//     if (selected) {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           /// Languages
//           Text(text, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: dark ? DColors.primaryDark : DColors.primary)),
//           /// Check Icons
//           Icon(Icons.check, color: dark ? DColors.primaryDark : DColors.primary),
//         ],
//       );
//     } else {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(text, style: Theme.of(context).textTheme.titleSmall),
//           const Icon(Icons.check),
//         ],
//       );
//     }
//   }
// }
