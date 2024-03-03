import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/home/presentation/home_screen.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconsax/iconsax.dart';
import 'common/managers/navigation_menu/navigation_menu_cubit.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  String currentCountry = "Loading...";

  /// Get Current Country
  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);

      String country = placeMarks.first.country ?? "Unknown";
      setState(() => currentCountry = country);
    } catch (e) {print("Error getting location: $e");}
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NavigationMenuCubit>();
    final darkMode = DHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: DAppBar(
        leadingWidget: CircleAvatar(
          radius: 30.r,
          backgroundColor: DColors.primary,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Duaya", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 20.sp)),
            Text(currentCountry, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp))
          ],
        ),
        actions: [
          /// Gift Icon
          Container(
            margin: EdgeInsets.symmetric(horizontal: DSizes.defaultSpace / 1.2),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(DSizes.borderRadiusLg), color: DColors.grey3),
            child: Center(child: Image.asset(DImages.giftIcon)),
          )
        ],
      ),

      bottomNavigationBar: BlocBuilder<NavigationMenuCubit, int>(
        builder: (context, selectedIndex) {
          return NavigationBar(
            height: 80.h,
            elevation: 0,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) => cubit.setSelectedIndex(index),
            backgroundColor: darkMode ? DColors.black : Colors.white,
            indicatorColor: darkMode ? DColors.primaryDark.withOpacity(0.1) : DColors.primary.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.category), label: 'Category'),
              NavigationDestination(icon: Icon(Iconsax.flash), label: 'Flash Sale'),
              NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: 'Cart'),
              NavigationDestination(icon: Icon(Iconsax.menu_board), label: 'Menu'),
            ],
          );
        },
      ),
      body: BlocBuilder<NavigationMenuCubit, int>(
        builder: (context, selectedIndex) {
          return IndexedStack(
            index: selectedIndex,
            children: [
              const HomeScreen(),
              Container(),
              Container(),
              Container(),
              Container(),
              // MoreScreen(),
              // OrdersScreen(),
              // StatisticsScreen(),
              // WishListScreen(),
              // Container(color: Colors.orange),
              // HomeScreen(),
              // MoreScreen(),
              // OrderScreen(),
              // ProfileScreen(),
            ],
          );
        },
      ),
    );
  }
}
