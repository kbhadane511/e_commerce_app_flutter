import 'package:e_commerce/common/styles/shadow_style.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/icon/circular_icon.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/product/price/product_price_text.dart';
import 'package:e_commerce/common/widgets/text/product_title_text.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CProductCardVertical extends StatelessWidget {
  const CProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: [CShadowStyle.verticalProductShadow],
          color: dark? Colors.black : Colors.white,
        ),
        child: Column(
          children: [
            CRoundedContainer(
              height: 180.0,
              padding: const EdgeInsets.all(CSizes.sm),
              backgroundColor: dark? const Color.fromARGB(255, 69, 68, 68) : const Color.fromARGB(255, 247, 235, 235),
              child:  Stack(
                children: [
                  ///thumbnail img
                  const CRoundedImage(imagrUrl: CImageStrings.google,applyImageRadius: true,),
      
                  ///sale tag
                  Positioned(
                    top: 12,
                    child: CRoundedContainer(
                      radius: CSizes.sm,
                      backgroundColor: Colors.limeAccent.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: CSizes.sm, vertical: CSizes.xs),
                      child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),),
                    ),
                  ),
      
                  ///favourite icon buttton
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: CCircularIcon(icon: Iconsax.heart5,color: Colors.red,),
                    ),
                ],
              ),
            ),
            ///details
            Padding(
              padding: const EdgeInsets.all(CSizes.sm),
              child: Column(
                children: [
                  const CProductTitleText(title: 'Google',smallSize: true,),
                  const SizedBox(height: CSizes.spaceBtnItems/2,),
                  Row(
                    
                    children: [
                      Text("Branded", style: Theme.of(context).textTheme.labelMedium, overflow: TextOverflow.ellipsis,maxLines: 1,),
                      const SizedBox(width: CSizes.xs,),
                      const Icon(Iconsax.verify5,color: Colors.blue,size: 10,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ///price
                      const CProductTextPrice(price: '35',),
                      Container(      
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(15)
                          )
                        ),
                        child: const SizedBox(width: 31*1.2,height: 31*1.2,child: Icon(Iconsax.add,color: Colors.white,)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

