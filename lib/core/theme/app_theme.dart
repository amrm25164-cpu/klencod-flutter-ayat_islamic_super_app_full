import 'package:flutter/material.dart';

class AppColors {
  static const Color deepEmerald = Color(0xFF0A3A2A);
  static const Color darkBlack = Color(0xFF121212);
  static const Color elegantGold = Color(0xFFD4AF37);
  static const Color pureWhite = Color(0xFFFFFFFF);
  static const Color softGray = Color(0xFF9E9E9E);
  static const Color cardDark = Color(0xFF1E2922);
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBlack,
    primaryColor: AppColors.deepEmerald,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.deepEmerald,
      secondary: AppColors.elegantGold,
      surface: AppColors.cardDark,
    ),
    fontFamily: 'UthmanicHafs',
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBlack,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'UthmanicHafs',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.elegantGold,
      ),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.pureWhite,
    primaryColor: AppColors.deepEmerald,
    colorScheme: const ColorScheme.light(
      primary: AppColors.deepEmerald,
      secondary: AppColors.elegantGold,
      surface: Color(0xFFF5F5F5),
    ),
    fontFamily: 'UthmanicHafs',
  );
}
