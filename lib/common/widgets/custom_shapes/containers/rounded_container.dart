import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CRoundedContainer extends StatelessWidget {
  const CRoundedContainer({
    super.key, 
    this.width, 
    this.height, 
    this.radius=CSizes.cardRadiusLg, 
    this.child, 
    this.showBorder=false, 
    this.padding, 
    this.margin, 
    this.borderColor=Colors.blue, 
    this.backgroundColor= Colors.white
    });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final EdgeInsetsGeometry? padding, margin;
  final Color borderColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}