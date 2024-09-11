import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CRoundedImage extends StatelessWidget {
  const CRoundedImage({
    super.key, 
    this.width, 
    this.height, 
    required this.imagrUrl, 
    this.applyImageRadius=true, 
    this.border, 
    this.backgroundColor=Colors.white, 
    this.fit=BoxFit.contain, 
    this.padding, 
    this.isNetworkImage=false, 
    this.onPressed,
    this.borderRadius=CSizes.sm, 
  });
  final double? width, height;
  final double borderRadius;
  final String imagrUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(border: border,color: backgroundColor,borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child:  Image(image: isNetworkImage? NetworkImage(imagrUrl) : AssetImage(imagrUrl),fit: fit,)
        ),
      ),
    );
  }
}
