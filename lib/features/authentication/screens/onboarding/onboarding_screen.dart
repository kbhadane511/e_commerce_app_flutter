import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollble pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updateCurrentPageIndicator,
            children: const [
              OnboardingPage(
                image: CImageStrings.onBoardingImage1, 
                title: CTextStrings.onBoardingTitle1, 
                subTitle: CTextStrings.onBoardingSubTitle1,
                ),

                OnboardingPage(
                image: CImageStrings.onBoardingImage2,
                title: CTextStrings.onBoardingTitle2, 
                subTitle: CTextStrings.onBoardingSubTitle2,
                ),

                OnboardingPage(
                image: CImageStrings.onBoardingImage3,
                title: CTextStrings.onBoardingTitle3, 
                subTitle: CTextStrings.onBoardingSubTitle3,
                ),
            ],
          ),
          //skip button
          const OnboardingSkipButton(),

          //dot navigation smoothPageindicator
          const OnboardingDotNavigation(),

          //circular button
          const OnboardingNextButton(),
          
        ],
      ),
    );
  }
}
