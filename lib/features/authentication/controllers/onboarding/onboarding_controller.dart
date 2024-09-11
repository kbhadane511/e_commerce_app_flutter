import 'package:e_commerce/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables
  final pageController= PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updateCurrentPageIndicator(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;    
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    }
    else{
      int page = currentPageIndex.value + 1;
      pageController.jumpTo(page as double); 
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}