import 'package:e_commerce/features/authentication/screens/sign_up/varify_email.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
    
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTextStrings.firstName,
                    prefix: Icon(Iconsax.user),                              
                  ),
                ),
              ),
              const SizedBox(width: CSizes.spaceBtnItems,),
    
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTextStrings.lastName,
                    prefix: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: CSizes.spaceBtnInputFields,),
          
          //username
          TextFormField(
            decoration: const InputDecoration(
              labelText: CTextStrings.username,
              prefix: Icon(Iconsax.user_edit),                        
            ),
          ),
          const SizedBox(height: CSizes.spaceBtnInputFields,),
    
          //email
          TextFormField(
            decoration: const InputDecoration(
              labelText: CTextStrings.email,
              prefix: Icon(Iconsax.sms),                        
            ),
          ),
          const SizedBox(height: CSizes.spaceBtnInputFields,),
    
          //email
          TextFormField(
            decoration: const InputDecoration(
              labelText: CTextStrings.phoneNumber,
              prefix: Icon(Iconsax.call),                        
            ),
          ),
          const SizedBox(height: CSizes.spaceBtnInputFields,),
    
          //password
          TextFormField(
            decoration: const InputDecoration(
              labelText: CTextStrings.password,
              prefix: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)                        
            ),
          ),
          const SizedBox(height: CSizes.spaceBtnInputFields,),
    
          //term & conditions checkbox
          Row(
            children: [
              Checkbox(
                value: true, 
                onChanged: (value){}
                ),
                const SizedBox(width: CSizes.spaceBtnItems,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '${CTextStrings.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: '${CTextStrings.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark? Colors.white : Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: dark? Colors.white: Colors.black
                      )),
                      TextSpan(text: '${CTextStrings.and} ',style: Theme.of(context).textTheme.bodySmall)
                    ]
                  )
                )
            ],
          ),
          //signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                Get.to(const VarifyEmail());
              }, 
              child: const Text(CTextStrings.createAccount)
              ),
          ),
          const SizedBox(height: CSizes.spaceBtnSections,),
        ],
      )
      );
  }
}