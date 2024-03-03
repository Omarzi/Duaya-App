import 'package:duaya_app/common/screens/no_connection/no_connection.dart';
import 'package:duaya_app/features/authentication/presentation/login/login.dart';
import 'package:duaya_app/features/authentication/presentation/password_configuration/forget_password.dart';
import 'package:duaya_app/features/authentication/presentation/password_configuration/reset_password.dart';
import 'package:duaya_app/features/authentication/presentation/password_configuration/send_otp.dart';
import 'package:duaya_app/features/authentication/presentation/signup/signup.dart';
import 'package:duaya_app/features/home/presentation/details_product.dart';
import 'package:duaya_app/features/onboarding/presentation/onboarding.dart';
import 'package:duaya_app/features/splash/splash_screen.dart';
import 'package:duaya_app/navigation_menu.dart';
import 'package:duaya_app/routing/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../utils/constants/exports.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      /// *************************************** Start No Connection *************************************** \\\
      // case DRoutesName.noConnectionRoute:
      //   return PageTransition(
      //     child: const NoConnectionScreen(),
      //     type: PageTransitionType.fade,
      //     settings: settings,
      //     reverseDuration: const Duration(milliseconds: 250),
      //   );

      /// *************************************** End No Connection *************************************** \\\

      /// *************************************** Start Authentication *************************************** \\\
      case DRoutesName.splashRoute:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case DRoutesName.onBoardingRoute:
        return PageTransition(
          child: const OnBoardingScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case DRoutesName.loginRoute:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case DRoutesName.forgetPasswordRoute:
        return PageTransition(
          child: ForgetPassword(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case DRoutesName.verifyCodeRoute:
        String phone = settings.arguments as String;

        return PageTransition(
          child: SendOTPScreen(phone: phone),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case DRoutesName.resetPasswordRoute:
        return PageTransition(
          child: const ResetPasswordScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case DRoutesName.signupRoute:
        return PageTransition(
          child: const SignupScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case DRoutesName.detailsProductRoute:
        return PageTransition(
          child: DetailsProduct(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      // case ORoutesName.nextPageInSignupRoute:
      //   return PageTransition(
      //     child: NextPageInSignUp(),
      //     type: PageTransitionType.fade,
      //     settings: settings,
      //     reverseDuration: const Duration(milliseconds: 250),
      //   );

      /// *************************************** End Authentication *************************************** \\\

      /// *************************************** Start Navigation Bar *************************************** \\\
      case DRoutesName.navigationMenuRoute:
        return PageTransition(
          child: const NavigationMenu(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      default:
        return unDefinedRoute();
    }
  }

  /// Un Defined Route
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            '',
          ),
        ),
        body: const Center(
          child: Text(
            '',
          ),
        ),
      ),
    );
  }
}
