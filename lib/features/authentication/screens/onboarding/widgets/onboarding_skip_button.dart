import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utiles.dart';
import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CDeviceUtiles.getAppBarHeight(),
      right: CSizes.defaultSpace,
      child: TextButton(
        onPressed: (){
          OnboardingController.instance.skipPage();
        }, 
        child: const Text("skip",style: TextStyle(fontSize: 17.0),)
        )
    );
  }
}
