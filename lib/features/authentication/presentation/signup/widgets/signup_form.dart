import 'dart:io';
import 'package:duaya_app/common/widgets/custom_popup_menu/custom_popup_menu.dart';
import 'package:duaya_app/features/authentication/presentation/signup/widgets/terms_conditions_checkbox.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/formatters/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class DSignupForm extends StatefulWidget {
  const DSignupForm({super.key});

  @override
  State<DSignupForm> createState() => _DSignupFormState();
}

class _DSignupFormState extends State<DSignupForm> {
  String currentCountry = "Loading...";
  String currentCity = "Loading...";
  String selectedCountryCode = '+20';
  TextEditingController phoneController = TextEditingController();
  /// Select
  List<String> works = ['Pharmacy', 'Clinic', 'Hospital', 'Lab'];
  String? selectWork = 'Pharmacy';
  XFile? _selectedImage;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _getCurrentCity();
  }

  /// Get Current Country
  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);

      String country = placeMarks.first.country ?? "Unknown";
      setState(() => currentCountry = country);
    } catch (e) {print("Error getting location: $e");}
  }
  /// Get Current City
  Future<void> _getCurrentCity() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);

      String city = placeMarks.first.administrativeArea ?? "Unknown"; // Extracting the city
      setState(() => currentCity = city);
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // /// First & Last Name
          // Row(
          //   children: [
          //     Expanded(
          //       child: TextFormField(
          //         expands: false,
          //         decoration: const InputDecoration(
          //           labelText: 'First Name',
          //           prefixIcon: Icon(Iconsax.user),
          //         ),
          //       ),
          //     ),
          //     SizedBox(width: DSizes.spaceBtwInputFields),
          //     Expanded(
          //       child: TextFormField(
          //         expands: false,
          //         decoration: const InputDecoration(
          //           labelText: 'Last Name',
          //           prefixIcon: Icon(Iconsax.user),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: DSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'User Name',
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: DSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'E-mail',
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: DSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              suffixIcon: const Icon(Iconsax.call),
              prefixIcon: CustomPopupMenu(textWidget: Text(currentCountry == 'Egypt' ? selectedCountryCode.toString() : currentCountry == 'Saudi Arabia' || currentCountry == 'Saudi' ? '+966' : selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value)),
            ),
            validator: (value) => DFormatter.formatPhoneNumber(value, selectedCountryCode),
          ),
          SizedBox(height: DSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'password',
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: DSizes.spaceBtwInputFields),

          /// Location (Country)
          TextFormField(
            expands: false,
            readOnly: true,
            decoration: InputDecoration(
              hintText: currentCountry,
              prefixIcon: const Icon(Iconsax.location),
            ),
            validator: (value) => DFormatter.formatLocation(currentCountry),
          ),
          SizedBox(height: DSizes.spaceBtwInputFields),

          /// Location (City)
          TextFormField(
            expands: false,
            readOnly: true,
            decoration: InputDecoration(
              hintText: currentCity,
              prefixIcon: const Icon(Iconsax.location),
            ),
            validator: (value) => DFormatter.formatLocation(currentCountry),
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

          /// Fields
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: selectWork == 'Pharmacy' ? 'Pharmacy Name' : selectWork == 'Clinic' ? 'Clinic Name' : selectWork == 'Hospital' ? 'Hospital Name' : 'Lab Name',
              prefixIcon: const Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: DSizes.spaceBtwInputFields),

          selectWork == 'Pharmacy' ? InkWell(
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
                          Text('Upload image of the commercial register', style: const TextStyle().copyWith(fontSize: 12.8.sp, color: Colors.black),)
                        ],
                      ),
              ),
            ),
          ) : Container(),
          SizedBox(height: DSizes.spaceBtwInputFields),

          /// Terms&Conditions Checkbox
          const DTermsAndConditionCheckbox(),
          SizedBox(height: DSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                // onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text('Create Account')),
          ),
        ],
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

