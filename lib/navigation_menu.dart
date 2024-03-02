import 'package:duaya_app/utils/constants/colors.dart';
import 'package:duaya_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'common/managers/navigation_menu/navigation_menu_cubit.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NavigationMenuCubit>();
    final darkMode = DHelperFunctions.isDarkMode(context);

    return Scaffold(
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
              Container(),
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
