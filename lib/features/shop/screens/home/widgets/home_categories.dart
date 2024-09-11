import 'package:e_commerce/common/widgets/text/vertical_image_text.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CHomeCategories extends StatelessWidget {
  const CHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return CVerticalImageText(image: CImageStrings.appLogo, title: CTextStrings.appName, textColor: Colors.white, onTap: (){});
        },
      ),
    );
  }
}
