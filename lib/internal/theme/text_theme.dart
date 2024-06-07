import 'package:flutter/material.dart';
import 'package:test_task/internal/theme/theme_helper.dart';

abstract class TextHelper {
  static TextStyle sProDisplayMedium12w400 = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ThemeHelper.black,
      fontFamily: 'SF Pro Display');
  static TextStyle sProDisplayMedium16 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ThemeHelper.white,
      fontFamily: 'SF Pro Display');
  static TextStyle sProDisplayMedium16w300 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: ThemeHelper.black,
      fontFamily: 'SF Pro Display');
  static TextStyle sProDisplayMedium17w500 = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: ThemeHelper.black,
      fontFamily: 'SF Pro Display');
  static TextStyle sProDisplayMedium22 = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: ThemeHelper.black,
      fontFamily: 'SF Pro Display');
}
