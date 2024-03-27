import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/common/widgets/button/custom_button_major_in_app.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewAddressFormScreen extends StatefulWidget {
  const AddNewAddressFormScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAddressFormScreen> createState() => _AddNewAddressFormScreenState();
}
List<String> country = ['Egypt', 'Saudi Arabia'];
String? selectWork = 'Egypt';
class _AddNewAddressFormScreenState extends State<AddNewAddressFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: Text("Add New Address", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: false,
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.padding),
          child: Column(
            children: [
              /// Address in detail
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Address in detail',
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),
              /// Country
              SizedBox(
                width: double.infinity,
                child:  DropdownButtonFormField<String>(

                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide(width: 1.w, color: Colors.grey),
                    ),
                    focusedBorder: const OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide(width: 1.w, color: Colors.grey),
                    ),
                    border: const OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide(width: 1.w, color: Colors.grey),
                    ),
                  ),
                  value: selectWork,
                  items: country.map((item) => DropdownMenuItem(value: item, child: Text(item, style: const TextStyle().copyWith(fontSize: 14.sp, color: Colors.black)))).toList(),
                  onChanged: (item) => setState(() => selectWork = item),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),
              /// governorate
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: "governorate",
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),
              /// city
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: "city",
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),
              /// Phone
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: "Phone",
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),
            ],
          ),
        ),
      ),
        bottomNavigationBar: CustomButtonMajorInApp(text: "Add",onPressed: (){context.pushNamed(DRoutesName.shippingInformationRoute);}, margin: 20,)

    );
  }
}
