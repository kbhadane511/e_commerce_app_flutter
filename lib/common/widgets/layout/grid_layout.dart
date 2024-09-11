import 'package:flutter/material.dart';

class CGridLayout extends StatelessWidget {
  const CGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent=288, required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext,int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: mainAxisExtent,
        ), 
      itemBuilder: itemBuilder
      );
  }
}
