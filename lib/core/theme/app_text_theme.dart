import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/utils/responsive_breakpoints.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme getResponsiveTextTheme(BuildContext context) {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(57, context),
        fontWeight: FontWeight.w400,
      ),
      displayMedium: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(45, context),
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(36, context),
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(32, context),
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(28, context),
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(24, context),
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(22, context),
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(16, context),
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(14, context),
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(16, context),
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(14, context),
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(12, context),
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(14, context),
        fontWeight: FontWeight.w600,
      ),
      labelMedium: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(12, context),
        fontWeight: FontWeight.w600,
      ),
      labelSmall: TextStyle(
        fontSize: ResponsiveBreakpoints.scaleFont(11, context),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
