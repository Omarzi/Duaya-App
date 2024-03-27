import 'package:duaya_app/common/widgets/appbar/appbar.dart';
import 'package:duaya_app/features/cart/presentation/cart_screen.dart';
import 'package:duaya_app/features/category/presentation/category/presentation/category_screen.dart';
import 'package:duaya_app/features/flash/presentation/flash_screen.dart';
import 'package:duaya_app/features/home/presentation/home_screen.dart';
import 'package:duaya_app/features/menu/presentation/menu_screen.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:duaya_app/utils/constants/sizes.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:duaya_app/utils/helpers/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iconsax/iconsax.dart';
import 'common/managers/navigation_menu/navigation_menu_cubit.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key});

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
    final cubit = context.read<NavigationMenuCubit>();
    final darkMode = DHelperFunctions.isDarkMode(context);

    return BlocBuilder<NavigationMenuCubit, int>(
      builder: (context, selectedIndex) {
        return Scaffold(
          appBar: selectedIndex == 3 ? null : selectedIndex == 2
              /// Flash AppBar
              ? DAppBar(
                bgColor: DColors.appBarColor,
                showBackGroundColor: true,
                centerTitle: true,
                /// Heart Icon
                leadingWidget: IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart, color: DColors.white)),
                /// Flash Title
                title: Text('Flash Sale', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 18.sp, color: DColors.white)),
                /// Search Icon
                actions: [IconButton(onPressed: () {}, icon: const Icon(Iconsax.search_normal, color: DColors.white))],
              )
              /// AppBar in All Screens
              : DAppBar(
                  leadingWidget: GestureDetector(
                    onTap: () => context.pushNamed(DRoutesName.settingsRoute),
                    child: CircleAvatar(
                      radius: 50.r,
                      backgroundImage: const AssetImage(DImages.profileLogo),
                    ),
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
                    InkWell(
                      onTap: () => context.pushNamed(DRoutesName.giftRoute),
                      overlayColor: MaterialStateProperty.all(DColors.primary.withOpacity(.1)),
                      borderRadius: BorderRadius.circular(DSizes.borderRadiusMd),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Image.asset(DImages.giftIcon),
                      ),
                    ),
                  ],
                ),
          bottomNavigationBar: NavigationBar(
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
          ),
          body:
          // AnimatedSwitcher(
          //   duration: const Duration(milliseconds: 200),
          //   transitionBuilder: (child, animation) {
          //     return FadeTransition(
          //       opacity: animation,
          //       child: child,
          //     );
          //   },
          //   child:
            _buildScreen(selectedIndex),
          // ),
        );
      },
    );
  }

  Widget _buildScreen(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
          return CategoryScreen();
      case 2:
        return const FlashScreen();
      case 3:
        return const CartScreen();
      case 4:
        return const MenuScreen();
      default:
        return Container();
    }
  }
}
