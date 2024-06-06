import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final Color color;
  final EdgeInsetsGeometry? padding;
  final Widget child;

  const CommonContainer({
    super.key,
    required this.color,
    required this.child, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
