import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CTextStrings.homeAppBArTitle,style: Theme.of(context).textTheme.labelMedium,),
          Text(CTextStrings.homeAppBArSubTitle,style: Theme.of(context).textTheme.headlineMedium,),
        ],
      ),
      actions: [
        CCartCounterIcon(onPressed: () {}, iconColor: Colors.black,),
      ],
    );
  }
}
