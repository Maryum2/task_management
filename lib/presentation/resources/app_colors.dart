import 'package:flutter/material.dart';

class AppColors {
  final Color primary;
  final Color secondary;
  final Color black;
  final Color white;
  final Color text;
  final Color background;
  final Color greyColor;
  final Color transparentColor;
  const AppColors({
    required this.black,
    required this.primary,
    required this.secondary,
    required this.white,
    required this.text,
    required this.background,
    required this.greyColor,
    required this.transparentColor,
  });
}

const colorsLight = AppColors(
  black: Color(0xFF231F20),
  primary: Color(0xFFC8102E),
  secondary: Color(0xFF0A8020),
  white: Colors.white,
  text: Color(0xFF231F20),
  background: Colors.white,
  greyColor: Color(0xFF6B6E79),
  transparentColor: Colors.transparent,
);

const colorsDark = AppColors(
  black: Color(0xFF231F20),
  primary: Color(0xFFC8102E),
  secondary: Color(0xFF0A8020),
  white: Colors.white,
  text: Colors.white,
  background: Color(0xFF1a1a1a),
  greyColor: Color(0xFF6B6E79),
  transparentColor: Colors.transparent,
);

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    final brightness = Theme.of(this).brightness;
    switch (brightness) {
      case Brightness.light:
        return colorsLight;
      case Brightness.dark:
        return colorsDark;
      default:
        return colorsLight;
    }
  }
}
