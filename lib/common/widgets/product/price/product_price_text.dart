import 'package:flutter/material.dart';

class CProductTextPrice extends StatelessWidget {
  const CProductTextPrice({
    super.key, 
    this.currencySign ="\$", 
    required this.price, 
    this.maxLines=1, 
    this.lineThrough=false, 
    this.isLarge=false,
  });
  final String currencySign, price;
  final int maxLines;
  final bool lineThrough;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign +
      price,
      style: isLarge?
      Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough? TextDecoration.lineThrough: null)
      :
      Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough? TextDecoration.lineThrough: null),

      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      );
  }
}
