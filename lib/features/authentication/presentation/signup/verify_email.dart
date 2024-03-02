import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => context.pop,
              icon: const Icon(Icons.close))
        ],
      ),
      body: SingleChildScrollView(
        /// Padding to Give Default Equal Space on all sides in all screens.
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Images
              Image(
                  image: const AssetImage(DImages.deliveredEmailIllustration),
                  width: DHelperFunctions.screenWidth(context) * 0.6),
              SizedBox(height: DSizes.spaceBtwItems),

              /// Title & SubTitle
              Text('Verify your email address!',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: DSizes.spaceBtwItems),
              Text('3omarabdelaziz123@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              SizedBox(height: DSizes.spaceBtwItems),
              Text('Congratulations! Your Account Awaits: Verify Your Email to Start Shopping and Experience a World of Unrivaled Deals and Personalized Offers.',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: DSizes.spaceBtwItems),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                      // onPressed: () => Get.to(() => SuccessScreen(
                      //       image: DImages.productsSuccessIllustration,
                      //       title: TTexts.yourAccountCreatedTitle,
                      //       subTitle: TTexts.yourAccountCreatedSubTitle,
                      //       onPressed: () => Get.to(() => const LoginScreen()),
                      //     )),
                      child: const Text('Continue'))),
              SizedBox(height: DSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text('Resend Email'))),
            ],
          ),
        ),
      ),
    );
  }
}
