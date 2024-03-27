import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/common/widgets/button/custom_button_major_in_app.dart';
import 'package:duaya_app/features/cart/presentation/widgets/custom_container_add_new_address.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text("User addresses",
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: false,
        // leadingWidget: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () { context.pop; },),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.padding),
          child:  Column(
            children: [
            CustomContainerAddNewAddress(onTap: (){context.pushNamed(DRoutesName.addNewAddressFormRoute);}),
            ],
          ),
        ),
      ),
        bottomNavigationBar: CustomButtonMajorInApp( margin: 20, text: "Back to shipping information",onPressed: (){context.pushNamed(DRoutesName.shippingInformationRoute);},)

    );
  }
}
