import 'package:duaya_app/common/widgets/custom_button/custom_button.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class SendOTPScreen extends StatefulWidget {
  final String phone;
  const SendOTPScreen({super.key, required this.phone});

  @override
  State<SendOTPScreen> createState() => _SendOTPScreenState();
}

class _SendOTPScreenState extends State<SendOTPScreen> {
  TextEditingController pinputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => context.pop(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(DImages.deliveredEmailIllustration), width: DHelperFunctions.screenWidth(context) * 0.6),
              SizedBox(height: DSizes.spaceBtwItems),

              /// Title & SubTitle
              Text('Password Reset Email Sent', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              SizedBox(height: DSizes.spaceBtwItems),
              Text('3omarabdelaziz123@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              SizedBox(height: DSizes.spaceBtwItems),
              Text('Verification Code', style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              SizedBox(height: DSizes.spaceBtwSections),

              /// OTB Buttons
              Directionality(
                textDirection: TextDirection.ltr,
                child: SizedBox(
                  width: 320.w,
                  // height: 50.h,
                  child: Pinput(
                    androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                    controller: pinputController,
                    length: 6,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    focusedPinTheme: PinTheme(
                      height: 50.h,
                      width: 80.w,
                      // textStyle: AppFonts.textInPip,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        border: Border.all(
                          width: 1.w,
                          color: dark ? DColors.primaryDark : DColors.primary,
                        ),
                      ),
                    ),
                    defaultPinTheme: PinTheme(
                      height: 50.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: dark ? DColors.dark : DColors.white,
                        border: Border.all(width: 1.w, color: dark ? DColors.darkGrey : DColors.grey),
                      ),
                    ),
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    onCompleted: (value) async {},
                  ),
                ),
              ),

              SizedBox(height: DSizes.spaceBtwSections),

              /// Buttons
              CustomButton(buttonText: 'Done', onPressed: () => context.pushNamed(DRoutesName.resetPasswordRoute)),
              SizedBox(height: DSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text('Resend Email'))),
            ],
          ),
        ),
      ),
    );
  }
}
