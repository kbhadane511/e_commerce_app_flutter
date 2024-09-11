import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CPromoSlider extends StatelessWidget {
  const CPromoSlider({
    super.key, required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
        items: banner.map((url)=> CRoundedImage(imagrUrl: url)).toList(),
        options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, _) => controller.carosalCurrentIndex(index),
        ),
        ),
    
        Center(
          child: Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0; i<banner.length; i++)
                 CCircularContainer(
                width: 20,
                height: 4,
                margin: const EdgeInsets.all(5.0),
                backgroundColor: controller.carosalCurrentIndex.value==i? Colors.blue : Colors.grey,
              ),
            ],
            ),
          ),
        ),
      ],
    );
  }
}
