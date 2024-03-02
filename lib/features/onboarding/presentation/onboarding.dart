import 'package:duaya_app/features/onboarding/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:duaya_app/features/onboarding/presentation/widgets/onboarding_dot_navigation.dart';
import 'package:duaya_app/features/onboarding/presentation/widgets/onboarding_next_button.dart';
import 'package:duaya_app/features/onboarding/presentation/widgets/onboarding_page.dart';
import 'package:duaya_app/features/onboarding/presentation/widgets/onboarding_skip.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Builder(
      builder: (BuildContext context) {
        final cubit = context.read<OnBoardingCubit>();

        return Scaffold(
          body: Stack(
            children: [

              /// Horizontal Scrollable Page
              PageView(
                controller: cubit.pageController,
                onPageChanged: cubit.updatePageIndicator,
                children: const [
                  OnBoardingPage(
                    image: DImages.onBoardingImage1,
                    title: 'Construction services',
                    subTitle: 'Welcome to a World of Limitless Choice - Your Perfect Product Awaits!',
                  ),
                  OnBoardingPage(
                    image: DImages.onBoardingImage2,
                    title: 'Ease of requesting the service',
                    subTitle: 'For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!',
                  ),
                  OnBoardingPage(
                    image: DImages.onBoardingImage3,
                    title: 'Deliver at your door step',
                    subTitle: 'From Our Doorstep to Your - Swift, Secure, and Contactless Delivery!',
                  ),
                ],
              ),

              /// Skip Button
              const OnBoardingSkip(),

              /// Dot Navigation SmoothPageIndicator
              const OnBoardingDotNavigation(),

              /// Circular Button
              const OnBoardingNextButton(),
            ],
          ),
        );
      },
    );
  }
}
