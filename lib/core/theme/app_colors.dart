import 'package:flutter/material.dart';

const colorScheme = ColorScheme(
  brightness: Brightness.light,

  // Brand accents
  primary: Color(0xFFE974B5), // pink
  onPrimary: Colors.white,
  primaryContainer: Color(0xFFF7CBE5),
  onPrimaryContainer: Color(0xFF3B0B24),

  secondary: Color(0xFF8A2BE2), // purple
  onSecondary: Colors.white,
  secondaryContainer: Color(0xFFE0C7F9),
  onSecondaryContainer: Color(0xFF2D0055),

  // Optional tertiary accent (pulled from your UI’s dark navy)
  tertiary: Color(0xFF1B244B),
  onTertiary: Colors.white,
  tertiaryContainer: Color(0xFFD4D8F4),
  onTertiaryContainer: Color(0xFF0D1025),

  // Surfaces & backgrounds
  surface: Color(0xFFFCFCFC),

  onSurface: Color(0xFF333333),
  surfaceContainerHighest: Color(0xFFF1F1EF),
  onSurfaceVariant: Color(0xFF757575),

  // Outlines
  outline: Color(0xFFE0E0E0),
  outlineVariant: Color(0xFFE0E0E0),

  // Error
  error: Colors.red,
  onError: Colors.white,
  errorContainer: Color(0xFFF9B4B4),
  onErrorContainer: Color(0xFF410E0B),

  // Weird M3 extras
  shadow: Colors.black,
  scrim: Colors.black,
  inverseSurface: Color(0xFF2E2E2E),
  onInverseSurface: Colors.white,
  inversePrimary: Color(0xFF6A1B9A),
  surfaceTint: Color(0xFFE974B5),
);

class AppColors {
  static const Color backgroundColor = Colors.blueGrey; // same
}

const Color kSelectedBackgroundColor = Color.fromARGB(255, 234, 233, 236); // same
const Color kHoverBackgroundColor = Color(0xFFEEEEEE);
const Color kSelectedForegroundColor = Colors.black;
const Color kDefaultForegroundColor = Colors.black;
