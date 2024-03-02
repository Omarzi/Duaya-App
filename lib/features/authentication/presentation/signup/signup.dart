import 'package:duaya_app/common/widgets/login_signup/form_divider.dart';
import 'package:duaya_app/common/widgets/login_signup/social_buttons.dart';
import 'package:duaya_app/features/authentication/presentation/signup/widgets/signup_form.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? DColors.white : DColors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text('Let\'s create your account',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 20.sp)),
              SizedBox(height: DSizes.spaceBtwSections),

              /// Form
              const DSignupForm(),
              SizedBox(height: DSizes.spaceBtwSections / 2),
            ],
          ),
        ),
      ),
    );
  }
}