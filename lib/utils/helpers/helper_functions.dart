import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CHelperFunctions {
  CHelperFunctions._();

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  
  
}