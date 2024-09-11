import 'package:e_commerce/common/widgets/login_signup/form_devider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/sign_up/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              Text(CTextStrings.signUpTitle,style: Theme.of(context).textTheme.headlineMedium,),
              //form
              const SignupForm(),

              //devider
                FormDevider(deviderText: CTextStrings.orSignUpWith.capitalize!),
                const SizedBox(height: CSizes.spaceBtnSections,),

                //footer
                const SocialButtons(),
                const SizedBox(height: CSizes.spaceBtnSections,),

            ],
          ),
          ),
      ),
    );
  }
}
