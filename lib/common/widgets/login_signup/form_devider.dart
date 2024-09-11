import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormDevider extends StatelessWidget {
  const FormDevider({
    super.key,
    required this.deviderText
  });

  final String deviderText;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark? Colors.grey : Colors.black, thickness: 0.5, indent: 60.0, endIndent: 5,
          ),
        ),
        Text(deviderText.capitalize!,style: Theme.of(context).textTheme.labelMedium),
         Flexible(
          child: Divider(
            color: dark? Colors.grey : Colors.black, thickness: 0.5, indent: 5.0, endIndent: 60,
          ),
        )
      ],
    );
  }
}
