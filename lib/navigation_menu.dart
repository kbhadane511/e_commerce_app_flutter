import 'package:e_commerce/features/shop/screens/home/hhome_screen.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = CHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80.0,
          elevation: 0.0,
          backgroundColor: dark? Colors.black : Colors.white,
          indicatorColor: dark? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index){
            controller.selectedIndex.value = index;          
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ]
          ),
      ),
        body: Obx(()=>controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screen =[
    const HhomeScreen(),
    Container(color: Colors.blue,),
    Container(color: Colors.pink,),
    Container(color: Colors.lightGreen,),
  ];
}