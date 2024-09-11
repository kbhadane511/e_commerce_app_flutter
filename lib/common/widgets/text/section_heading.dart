import 'package:flutter/material.dart';

class CSectionHeading extends StatelessWidget {
  const CSectionHeading({
    super.key, this.textColor, this.showActiveButton=true, required this.title, this.buttonnTitle="View All", this.onPressed,
  });

  final Color? textColor;
  final bool showActiveButton;
  final String title,buttonnTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
        TextButton(onPressed: onPressed, child: Text(buttonnTitle))
      ],
    );
  }
}
