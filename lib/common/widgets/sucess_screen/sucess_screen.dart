import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            Image(image: AssetImage(image),width: CHelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: CSizes.spaceBtnSections,),

            //title & subTitle
            Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: CSizes.spaceBtnSections,),
            Text(subTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: CSizes.spaceBtnItems,),
            
            //buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed, 
                child: const Text(CTextStrings.ccontinue),
                ),
            ),
            const SizedBox(height: CSizes.spaceBtnItems,),
            
          ],
        ),
      ),
    );
  }
}