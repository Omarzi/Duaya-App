import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({Key? key,required this.hintText,required this.controller}) : super(key: key);
  String hintText;
  TextEditingController controller;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
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
              fillColor: DColors.lightGrey,
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
              contentPadding: EdgeInsets.only(left: DSizes.spaceBtwItems * 1.5, right: DSizes.spaceBtwItems / 2)
          ),
        ),
      ),
    );
  }
}