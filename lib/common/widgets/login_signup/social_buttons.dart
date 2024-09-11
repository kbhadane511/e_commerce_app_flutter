import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: CSizes.iconMd,
              height: CSizes.iconMd,
              image: AssetImage(CImageStrings.google)
              ),
            ),
        ),
        const SizedBox(width: CSizes.spaceBtnItems,),
    
         Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(
              width: CSizes.iconMd,
              height: CSizes.iconMd,
              image: AssetImage(CImageStrings.facebook)
              ),
            ),
        ),
    
      ],
    );
  }
}
