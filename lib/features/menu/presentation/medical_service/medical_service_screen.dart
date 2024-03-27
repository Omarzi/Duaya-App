import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/common/widgets/floating_action_button/custom_floating_action_button.dart';
import 'package:duaya_app/features/menu/presentation/medical_service/widgets/custom_container_medical_service_component/custom_container_medical_service_component.dart';
import 'package:duaya_app/utils/constants/constants.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalServiceScreen extends StatelessWidget {
  const MedicalServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DAppBar(
        title: Text("Medical Service"),
        centerTitle: true,
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: DSizes.spaceBtwItems, horizontal: DSizes.spaceBtwTexts * 2),
        /// Component Medical Service
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10.h,childAspectRatio: 1/2),
          shrinkWrap: true,
          itemCount: DConstants.imageMedicalService.length,
          itemBuilder: (context, index) {
            return CustomContainerMedicalServiceComponent(
                        productImage: DConstants.imageMedicalService[1],
                        description: "Application and website for the pharmacy ");
          },
        ),
      ),
      // floatingActionButton: const CustomFloatingActionButton(textButton: "New Service"),
    );
  }
}
