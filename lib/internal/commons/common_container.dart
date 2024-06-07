import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final Color color;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final String? assetImage;

  const CommonContainer({
    super.key,
    required this.color,
    required this.child,
    this.padding,
    this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
