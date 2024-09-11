import 'package:e_commerce/features/authentication/screens/password_confinguration/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            Text(CTextStrings.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: CSizes.spaceBtnItems,),
            Text(CTextStrings.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: CSizes.spaceBtnItems,),

            //textfield
            const TextField(
              decoration: InputDecoration(
                labelText: CTextStrings.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: CSizes.spaceBtnSections,),

            SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(const ResetPassword());
                      }, 
                      child: const Text(CTextStrings.submit)
                      ),
                  ),
            
          ],
        ),
      ),
    );
  }
}