import 'package:flutter/widgets.dart';

class AppSpacing {
  const AppSpacing._();

  static const double xxs = 4.0;
  static const double xs = 8.0;
  static const double sm = 12.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 40.0;

  static EdgeInsets screenPadding(double width) {
    if (width < 600) return const EdgeInsets.all(md);
    if (width < 1024) return const EdgeInsets.symmetric(horizontal: lg, vertical: md);
    if (width < 1440) return const EdgeInsets.symmetric(horizontal: xl, vertical: lg);
    return const EdgeInsets.symmetric(horizontal: xxl, vertical: lg);
  }
}
