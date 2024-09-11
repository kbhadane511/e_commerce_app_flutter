import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CSearchContainer extends StatelessWidget {
  const CSearchContainer({
    super.key, 
    required this.text, 
    this.icon = Iconsax.search_normal, 
    required this.showBackground, 
    required this.showBorder, this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark=CHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
        child: Container(
          width: CHelperFunctions.screenWidth(),
          padding: const EdgeInsets.all(CSizes.md),
          decoration: BoxDecoration(
            color: showBackground? dark? Colors.black: Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
            border: showBorder? Border.all(color: Colors.black) : null,
          ),
      
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: CSizes.defaultSpace,),
              Text(text,style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
