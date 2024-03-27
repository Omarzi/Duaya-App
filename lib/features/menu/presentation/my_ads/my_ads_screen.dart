import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/menu/presentation/my_ads/widgets/custom_container_remaining_uploads/custom_container_remaining_uploads.dart';
import 'package:duaya_app/features/menu/presentation/my_ads/widgets/custom_container_upgrade_package/custom_container_upgrade_package.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(
        title: Text("My Ads"),
        centerTitle: true,
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.spaceBtwItems),
          child: Column(
            children: [
              /// Container Remaining Uploads
             const CustomContainerRemainingUploads(),
              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems / 1.2),
              /// Container Upgrade Package
              const CustomContainerUpgradePackage(),
              /// Make Size
              SizedBox(height: DSizes.spaceBtwItems / 1.2),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: () => context.pushNamed(DRoutesName.addNewProductOrAdsRoute), child: const Text('Add product or Add advertisement')),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
