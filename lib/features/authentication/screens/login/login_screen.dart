import 'package:e_commerce/common/widgets/login_signup/form_devider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/login/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),

          child: Column(
            children: [
              //logo, title, subtitle
              LoginHeader(),

              //form
              LoginForm(),

              //divider
              FormDevider(deviderText: CTextStrings.orSignInWith),
              SizedBox(height: CSizes.spaceBtnItems,),

              //footer
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
