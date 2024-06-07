import 'package:flutter/material.dart';

class CommonTabBar extends StatelessWidget {
  const CommonTabBar({
    super.key,
    required this.text,
    required this.selectedColor,
    required this.unselectedColor,
    required this.selected,
    required this.onSelected,
  });

  final String text;
  final Color selectedColor;
  final Color unselectedColor;
  final bool selected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        width: 167,
        decoration: BoxDecoration(
          color: selected ? selectedColor : unselectedColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: selected ? Colors.white : const Color(0xFFECEAEA),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
