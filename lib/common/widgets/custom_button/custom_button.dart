import 'package:duaya_app/utils/constants/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText, required this.onPressed});
  final VoidCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFF2ED3C1), Color(0xFF33B4E5)], begin: Alignment.centerLeft, end: Alignment.centerRight), borderRadius: BorderRadius.circular(12.r),),
      child: ElevatedButton(onPressed: onPressed, child: Text(buttonText),
      ),
    );
  }
}
