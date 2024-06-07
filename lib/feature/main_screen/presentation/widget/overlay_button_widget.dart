import 'package:flutter/material.dart';
import 'package:test_task/internal/theme/text_theme.dart';
import 'package:test_task/internal/theme/theme_helper.dart';

class OverlayButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String imageURL;
  final String title;

  const OverlayButtonWidget({
    super.key,
    required this.onTap,
    required this.imageURL,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: ThemeHelper.white,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageURL,
              width: 22,
              height: 22,
            ),
            Text(
              title,
              style: TextHelper.sProDisplayMedium12w400,
            ),
          ],
        ),
      ),
    );
  }
}
