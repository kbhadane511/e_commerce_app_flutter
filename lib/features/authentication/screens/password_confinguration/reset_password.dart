import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: (){
              Get.back();
            },
            icon: const Icon(CupertinoIcons.clear)
            )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            Image(image: const AssetImage(CImageStrings.facebook),width: CHelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: CSizes.spaceBtnSections,),

            //title & subTitle
            Text(CTextStrings.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: CSizes.spaceBtnSections,),
            Text(CTextStrings.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: CSizes.spaceBtnItems,),
            
            //buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){}, 
                child: const Text(CTextStrings.done),
                ),
            ),
            const SizedBox(height: CSizes.spaceBtnItems,),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){}, 
                child: const Text(CTextStrings.resendMail),
                ),
            ),
            const SizedBox(height: CSizes.spaceBtnItems,),
          ],
        ),
      ),
    );
  }
}