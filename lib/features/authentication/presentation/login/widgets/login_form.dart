import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DLoginForm extends StatelessWidget {
  const DLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: DSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: 'E-mail'),
            ),
            SizedBox(height: DSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: DSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {},),
                    const Text('Remember Me'),
                  ],
                ),

                /// Forget Password
                TextButton(onPressed: () => context.pushNamed(DRoutesName.forgetPasswordRoute), child: const Text('Forget Password?')),
              ],
            ),
            SizedBox(height: DSizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => context.pushNamed(DRoutesName.navigationMenuRoute), child: const Text('Sing In'))),
            SizedBox(height: DSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () => context.pushNamed(DRoutesName.signupRoute), child: const Text('Create Account')),
            ),
          ],
        ),
      ),
    );
  }
}
