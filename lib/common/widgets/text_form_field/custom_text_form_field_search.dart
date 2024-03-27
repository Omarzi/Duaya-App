import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFieldSearch extends StatefulWidget {
  CustomTextFormFieldSearch({Key? key,required this.hintText,required this.controller}) : super(key: key);
  String hintText;
  TextEditingController controller;
  @override
  State<CustomTextFormFieldSearch> createState() => _CustomTextFormFieldSearchState();
}

class _CustomTextFormFieldSearchState extends State<CustomTextFormFieldSearch> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      child: SizedBox(
        width: width / 1.1,
        child: TextFormField(
          controller: widget.controller,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: DColors.grey3),
          decoration: InputDecoration(
              filled: true,
              fillColor: DColors.grey.withOpacity(0.5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DSizes.borderRadiusLg * 1.5),
                borderSide: const BorderSide(
                  color: DColors.borderTextFormField,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DSizes.borderRadiusLg *  1.5),
                borderSide: const BorderSide(
                  color: DColors.borderTextFormField,
                ),

              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(DSizes.borderRadiusLg *  1.5),
                borderSide: const BorderSide(
                  color: DColors.borderTextFormField,
                ),
              ),
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: DColors.silver),
              prefixIcon: Icon(Icons.search,color: DColors.silver,size: 25.sp),
              contentPadding: EdgeInsets.only(left: DSizes.spaceBtwItems * 1.5, right: DSizes.spaceBtwItems / 2)
          ),
        ),
      ),
    );
  }
}