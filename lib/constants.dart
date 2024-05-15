import 'dart:ui';

class AppColors {
  static const Color surfaceDefault = Color(0xFF171A21);
  static const Color surfaceElevated = Color(0xFF2a2f3c);
  static const Color primary = Color(0xFF4D7298);
  static const Color secondary = Color(0xFF77A6B6);
  static const Color accent = Color(0xFF8FE388);
  static const Color textPrimary = Color(0xFFF9D4BB);
}

class AppStyles {
  static TextStyle headlineLarge = TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.textPrimary);
  static TextStyle headlineMedium = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.textPrimary);
  static TextStyle headlineSmall = TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textPrimary);
  static TextStyle bodyLarge = TextStyle(fontSize: 16, color: AppColors.textPrimary);
  static TextStyle bodyMedium = TextStyle(fontSize: 14, color: AppColors.textPrimary);
  static TextStyle bodySmall = TextStyle(fontSize: 12, color: AppColors.textPrimary);
}