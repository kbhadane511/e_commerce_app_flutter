import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utiles.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Positioned(
      right: CSizes.defaultSpace,
      bottom: CDeviceUtiles.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: (){
          OnboardingController.instance.nextPage();
        }, 
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark? Colors.black : Colors.blue,
        ),
        child: const Icon(Iconsax.arrow_right_3),
        ),
    );
  }
}
