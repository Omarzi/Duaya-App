import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/exports.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:duaya_app/utils/local_storage/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';

import '../../utils/local_storage/cach_keys.dart';
// import 'package:geolocator/geolocator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkLocationPermission();
    openSettingLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// Decoration
        decoration: const BoxDecoration(

        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            child: Image.asset(DImages.appLogo),
          ),
        ),
      ),
    );
  }

  Future<void> checkLocationPermission() async {
    LocationPermission permission;

    /// Check if location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      /// Request to enable location services
      serviceEnabled = await Geolocator.openLocationSettings();
      if (!serviceEnabled) {
        /// Handle if user doesn't enable location services
        return;
      }
    }

    /// Check if location permission is granted
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      /// Request location permission
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        /// Handle if user doesn't grant location permission
        return;
      }
    }

    /// If location services and permissions are enabled, navigate to the home screen
    navigationToHome();
  }

  void openSettingLocation() async {
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      await Geolocator.openLocationSettings();
    }
  }

  void navigationToHome() {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        // if(DCacheHelper.getString(key: CacheKeys.token) == '') {
          context.pushReplacementNamed(DRoutesName.onBoardingRoute);
        }
        // else {
        //   context.pushReplacementNamed(DRoutesName.navigationMenuRoute);
        // }},
    );
  }
}
