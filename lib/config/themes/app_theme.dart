import 'package:flutter/material.dart';
import 'package:book/core/utils/app_colors.dart';

import '../../core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.black,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      iconTheme: IconThemeData(color: AppColors.black),
      elevation: 0,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.white),
      labelSmall: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black),
      titleMedium: TextStyle(
          fontSize: 19, fontWeight: FontWeight.normal, color: AppColors.black),
      displayMedium: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.black),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
      displaySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      headlineSmall: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.blueColor),
    ),
  );
}
