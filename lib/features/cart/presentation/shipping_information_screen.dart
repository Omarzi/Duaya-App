import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/common/widgets/button/custom_button_major_in_app.dart';
import 'package:duaya_app/features/cart/presentation/widgets/custom_container_address.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingInformationScreen extends StatelessWidget {
  const ShippingInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text("Shipping Information",
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: false,
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(DSizes.padding),
        child: Column(
          children: [
            /// Container Of Address
            const CustomContainerAddress(),

            /// Make Space
            SizedBox(height: 40.h),

            /// Text To Add Address
            Text("To add or edit Address, go to the Address page",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: DColors.error2,fontSize: 13.sp,decoration: TextDecoration.underline,decorationColor: DColors.error2))
          ],
        ),
      ),
      /// Button
        bottomNavigationBar: CustomButtonMajorInApp(text: "The next",onPressed: (){context.pushNamed(DRoutesName.paymentRoute);}, margin: 20,)
      // bottomNavigationBar:const CustomButtonMajorInApp(text: "The next")

    );
  }
}
