import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';

/// Custom Class for Light & Dark [ColorScheme] Themes
class TColorSchemeTheme {
  TColorSchemeTheme._(); // To avoid creating instances

  /// Customizable Light Color Scheme Theme
  static ColorScheme lightColorScheme = ColorScheme.fromSeed(seedColor: TColors.lightSeedColor, brightness: Brightness.dark);

  /// Customizable Dark Color Scheme Theme
  static ColorScheme darkColorScheme = ColorScheme.fromSeed(seedColor: TColors.darkSeedColor, brightness: Brightness.light);
}