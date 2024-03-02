import 'package:duaya_app/common/widgets/custom_button/custom_button.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/formatters/formatter.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool isShowedNewPassword = true;
  bool isShowedConfirmNewPassword = true;

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  var resetPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Form(
            key: resetPasswordFormKey,
            child: Column(
              children: [
                /// Image
                Image(image: const AssetImage(DImages.verifyIllustration), width: DHelperFunctions.screenWidth(context) * 0.6),
                SizedBox(height: DSizes.spaceBtwItems),

                /// Title & SubTitle
                Text('Password Reset Email Sent', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                SizedBox(height: DSizes.spaceBtwItems),
                Text('3omarabdelaziz123@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
                SizedBox(height: DSizes.spaceBtwItems),
                Text("Your Account Security is Our Priority! We've Sent You a Secure Link to Safety Change Your Password and Keep Your Account Protected.", style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                SizedBox(height: DSizes.spaceBtwSections),

                SizedBox(height: DSizes.spaceBtwInputFields),

                /// New Password
                TextFormField(
                  controller: newPasswordController,
                  obscureText: isShowedNewPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(prefixIcon: const Icon(Iconsax.password_check), labelText: 'New Password', suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      isShowedNewPassword = !isShowedNewPassword;
                    });
                  }, icon: Icon(isShowedNewPassword ? Iconsax.eye_slash : Iconsax.eye)),
                  ),
                  validator: (value) => DFormatter.formatPassword(value),
                ),

                SizedBox(height: DSizes.spaceBtwInputFields),

                /// Confirm New Password
                TextFormField(
                  controller: confirmNewPasswordController,
                  obscureText: isShowedConfirmNewPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(prefixIcon: const Icon(Iconsax.password_check), labelText: 'Confirm New Password', suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      isShowedConfirmNewPassword = !isShowedConfirmNewPassword;
                    });
                  }, icon: Icon(isShowedConfirmNewPassword ? Iconsax.eye_slash : Iconsax.eye)),
                  ),
                  validator: (value) => DFormatter.formatPassword(value),
                ),

                SizedBox(height: DSizes.spaceBtwSections),

                /// Buttons
                CustomButton(buttonText: 'Done', onPressed: () => context.pushNamed(DRoutesName.loginRoute)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
