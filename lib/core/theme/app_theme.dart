import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_colors.dart';
import 'package:internship_ad_stacks/core/theme/app_text_theme.dart';


class AppTheme {
  const AppTheme._();

  static ThemeData light(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: AppTextTheme.getResponsiveTextTheme(context),
      scaffoldBackgroundColor: colorScheme.surface,
    );
  }
}
