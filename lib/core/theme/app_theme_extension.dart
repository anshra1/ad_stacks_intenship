import 'package:flutter/material.dart';
import 'package:internship_ad_stacks/core/theme/app_text_theme.dart';

extension AppThemeExtension on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  Color get surface => colors.surface;
  TextTheme get textTheme => AppTextTheme.getResponsiveTextTheme(this);
}
