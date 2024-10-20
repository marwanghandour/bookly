import 'package:flutter/material.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.buttonColor,
    scaffoldBackgroundColor: AppColors.primaryBackground,
    brightness: Brightness.dark,
    fontFamily: AppStrings.fontFamily,
    

    // Text Theme
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.textColor, // Define bodyTextColor in AppColors
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 14,
      ),
      displayLarge: TextStyle(
        color: AppColors.textColor, // Define headlineColor in AppColors
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        color: Colors.white, // Button text color
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),

    // Button Theme
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.buttonColor,
      textTheme: ButtonTextTheme.primary,
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: const TextStyle(color: AppColors.textColor), // Define labelColor
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: AppColors.textColor, // Define iconColor in AppColors
    ),


  );
}
