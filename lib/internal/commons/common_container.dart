import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final Color color;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final String? assetImage;
  final double? height;
  final double? width;

  const CommonContainer({
    super.key,
    required this.color,
    required this.child,
    this.padding,
    this.assetImage,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(assetImage ?? 'Что-то пошло не так!'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
