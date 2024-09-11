import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CVerticalImageText extends StatelessWidget {
  const CVerticalImageText({
    super.key, required this.image, required this.title, required this.textColor, this.backgroundColor, required this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(right: CSizes.spaceBtnItems),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 56.0,
              height: 56.0,
              padding: const EdgeInsets.all(CSizes.sm),
              decoration: BoxDecoration(
                color: dark? Colors.black: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image),fit: BoxFit.cover, color: dark? Colors.white: Colors.black,),
              ),
            ),
            ///text
            const SizedBox(height: CSizes.spaceBtnItems/2,),
            SizedBox(
              width: 55,
              child: Text(title,style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
          ],
        ),
      ),
    );
  }
}
