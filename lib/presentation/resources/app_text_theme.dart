import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/resources/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextTheme getAppTextTheme(AppColors colors) {
  return TextTheme(
    displayLarge: TextStyle(
      fontSize: 57.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    displayMedium: TextStyle(
      fontSize: 45.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    displaySmall: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    headlineLarge: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    titleLarge: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: colors.text,
      height: 1.2,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: colors.text,
      height: 1.0,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.0,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.5,
    ),
    bodySmall: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: colors.text,
      height: 1.5,
    ),
    labelLarge: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: colors.text,
      height: 1.0,
    ),
    labelMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: colors.text,
      height: 1.0,
    ),
    labelSmall: TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeight.w500,
      color: colors.text,
      height: 1.0,
    ),
  );
}
