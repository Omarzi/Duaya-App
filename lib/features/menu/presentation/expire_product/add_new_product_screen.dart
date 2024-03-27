import 'dart:io';

import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/menu/presentation/expire_product/widgets/date_input_formatter.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  /// Select
  List<String> works = ['Pharmacy', 'Clinic', 'Hospital', 'Lab'];
  String? selectWork = 'Pharmacy';
  XFile? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(
        title: Text("Add Product"),
        centerTitle: true,
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              /// Product name
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Product Name',
                  prefixIcon: Icon(Iconsax.text),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              /// Product description
              TextFormField(
                expands: false,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Product Description',
                  prefixIcon: Icon(Iconsax.text),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              /// Select
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
                  items: works.map((item) => DropdownMenuItem(value: item, child: Text(item, style: const TextStyle().copyWith(fontSize: 14.sp, color: Colors.black)))).toList(),
                  onChanged: (item) => setState(() => selectWork = item),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              /// Expiry Date
              TextFormField(
                expands: false,
                keyboardType: TextInputType.datetime,

                decoration: const InputDecoration(
                  labelText: '20/5/1990',
                  prefixIcon: Icon(Iconsax.calendar),
                ),
                inputFormatters: [DateInputFormatter()],
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              /// Unit Price
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Unit Price',
                  prefixIcon: Icon(Iconsax.money),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              /// Quantity
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: 'Quantity',
                  prefixIcon: Icon(Iconsax.text),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              InkWell(
                onTap: _openImageGallery,
                child: Container(
                  width: double.infinity,
                  height: 200.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: _selectedImage != null
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(14.r),
                    child: Image.file(
                      File(_selectedImage!.path),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  )
                      : Center(
                    child: Column(
                      children: [
                        Lottie.asset(DImages.uploadImage, height: MediaQuery.of(context).size.height / 5.2),
                        Text('Choose Image', style: const TextStyle().copyWith(fontSize: 12.8.sp, color: Colors.black),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              InkWell(
                onTap: _openImageGallery,
                child: Container(
                  width: double.infinity,
                  height: 200.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: _selectedImage != null
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(14.r),
                    child: Image.file(
                      File(_selectedImage!.path),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  )
                      : Center(
                    child: Column(
                      children: [
                        Lottie.asset(DImages.uploadImage, height: MediaQuery.of(context).size.height / 5.2),
                        Text('Choose Image', style: const TextStyle().copyWith(fontSize: 12.8.sp, color: Colors.black),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: DSizes.spaceBtwInputFields),

              /// Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    // onPressed: () => Get.to(() => const VerifyEmailScreen()),
                    child: const Text('Done')),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _openImageGallery() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    } else {
      // User canceled the image picking
      print('No image selected');
    }
  }

}
