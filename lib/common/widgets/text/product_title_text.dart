import 'package:flutter/material.dart';

class CProductTitleText extends StatelessWidget {
  const CProductTitleText({
    super.key, required this.title, this.smallSize=false, this.maxLines=2, this.textAlign=TextAlign.left,
  });
  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleSmall,maxLines: maxLines,overflow: TextOverflow.ellipsis,textAlign: textAlign,);
    
  }
}