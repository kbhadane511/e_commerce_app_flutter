import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage( dark? CImageStrings.appLogo : CImageStrings.appLogo),
        ),
        Text(CTextStrings.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: CSizes.sm,),
        Text(CTextStrings.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}