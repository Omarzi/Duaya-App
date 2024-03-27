import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/cart/presentation/widgets/custom_cart_component.dart';
import 'package:duaya_app/features/home/presentation/widgets/custom_container_product/custom_container_minus_and_plus.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/constants.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../home/presentation/widgets/custom_container_product/custom_bottom_navigation_in_product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 0;
  ScrollController scrollController = ScrollController();
  String currentCountry = "Loading...";

  /// Get Current Country
  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);

      String country = placeMarks.first.country ?? "Unknown";
      setState(() => currentCountry = country);
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        leadingWidget: CircleAvatar(
          radius: 50.r,
          backgroundImage: const AssetImage(DImages.profileLogo),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Duaya", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 18.sp)),
            Text(currentCountry, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12.sp))
          ],
        ),
        actions: [
          /// Gift Icon
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: IconButton(onPressed: () {}, icon: Image.asset(DImages.removeIcon, height: 22.h)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(DSizes.padding),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Theme(
                data: Theme.of(context).copyWith(
                  scrollbarTheme: ScrollbarThemeData(
                    thumbColor: MaterialStateProperty.all<Color?>(DColors.primary.withOpacity(.8)),
                    trackColor: MaterialStateProperty.all<Color?>(DColors.grey3),
                  ),
                ),
                child: Scrollbar(
                  controller: scrollController,
                  radius: Radius.circular(DSizes.borderRadiusMd),
                  thumbVisibility: true,
                  trackVisibility: true,
                  child: ListView.separated(
                    controller: scrollController,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const CustomCartComponent();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: DSizes.defaultSpace);
                    },
                    itemCount: 5,
                  ),
                ),
              ),
            ),
            Expanded(
              child: CustomBottomNavigationInProduct(
                colorOfButton1: Colors.transparent,
                colorOfButton2: DColors.primary,
                textOfButton1: 'Add Item',
                textOfButton2: 'Check Out',
                colorOfBorderOfButton1: DColors.primary,
                colorOfBorderOfButton2: Colors.transparent,
                textButton1Color: DColors.primary,
                textButton2Color: DColors.white,
                price: '200\$',
                totalText: 'Total',
                isCart: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
