import 'package:e_commerce/features/authentication/screens/password_confinguration/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/sign_up/signup_screen.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: CSizes.spaceBtnSections),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: CTextStrings.email,
              ),
            ),
            const SizedBox(height: CSizes.spaceBtnInputFields,),
      
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: CTextStrings.password,
              ),
            ),
            const SizedBox(height: CSizes.spaceBtnInputFields,),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: true, 
                      onChanged: (value){}
                      ),
                      const Text(CTextStrings.rememberMe)
                  ],
                ),
                //Forget Password
                TextButton(
                  onPressed: (){
                    Get.to(const ForgetPassword());
                  }, 
                  child: const Text(CTextStrings.forgetPassword)
                  ),
                  const SizedBox(height: CSizes.spaceBtnSections,),
              ],
            ),
    
            
            //sin in button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(const NavigationMenu());
                      }, 
                      child: const Text(CTextStrings.signIn)
                      ),
                  ),
                  const SizedBox(height: CSizes.spaceBtnItems,),
      
                    //create acc button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: (){
                        Get.to(const SignupScreen());
                      }, 
                      child: const Text(CTextStrings.createAccount)
                      ),
                  ),
          ],
        )
      ),
    );
  }
}
