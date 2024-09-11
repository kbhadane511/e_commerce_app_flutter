import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance =>Get.find();

  final carosalCurrentIndex = 0.obs;

  void UpdatePageIndicator(index){
    carosalCurrentIndex.value =index;
  }
}