import 'package:duaya_app/common/managers/language/language_cubit.dart';
import 'package:duaya_app/common/managers/navigation_menu/navigation_menu_cubit.dart';
import 'package:duaya_app/features/onboarding/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:duaya_app/main.dart';
import 'package:duaya_app/routing/routes.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:duaya_app/utils/language/language_helper.dart';
import 'package:duaya_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants/exports.dart';

class DuayaApp extends StatelessWidget {
  const DuayaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => OnBoardingCubit()),
            BlocProvider<NavigationMenuCubit>(create: (context) => NavigationMenuCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: DAppTheme.lightTheme(context),
            darkTheme: DAppTheme.darkTheme(context),
            // navigatorKey: navigatorKey,
            onGenerateRoute: RouteGenerator.getRoute,
            // initialRoute: ORoutesName.loginRoute,
            // initialRoute: DRoutesName.splashRoute,
            initialRoute: DRoutesName.navigationMenuRoute,
          ),
        );
      },
    );
  }
}
