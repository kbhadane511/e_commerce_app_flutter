import 'package:e_commerce/common/widgets/sucess_screen/sucess_screen.dart';
import 'package:e_commerce/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VarifyEmail extends StatelessWidget {
  const VarifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Get.offAll(const LoginScreen());
            }, 
            icon: const Icon(CupertinoIcons.clear)
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            //image
            Image(image: const AssetImage(CImageStrings.appLogo),width: CHelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: CSizes.spaceBtnSections,),

            //title & subTitle
            Text(CTextStrings.confirmMail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: CSizes.spaceBtnSections,),
            Text("xyz@gmail.com",style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: CSizes.spaceBtnItems,),
            Text(CTextStrings.confirmMailSubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: CSizes.spaceBtnItems,),
            
            //buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Get.to( SucessScreen(
                    image: CImageStrings.emailVarified, 
                    title: CTextStrings.changeYourPasswordTitle, 
                    subTitle: CTextStrings.confirmMailSubTitle, 
                    onPressed: () {
                      Get.to(const LoginScreen());
                    }, 
                                        
                    ));
                }, 
                child: const Text(CTextStrings.ccontinue),
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