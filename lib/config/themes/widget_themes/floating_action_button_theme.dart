import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [FloatingActionButton] Themes
class TFloatingActionButtonTheme {
  TFloatingActionButtonTheme._(); // To avoid creating instances

  /// Customizable Light [FloatingActionButton] Theme
  static FloatingActionButtonThemeData lightFloatingActionButtonTheme = const FloatingActionButtonThemeData(
    foregroundColor: TColors.lightFloatingActionButtonForeground,
    backgroundColor: TColors.lightFloatingActionButtonBackground,
    iconSize: TSizes.iconMd,
  );

  /// Customizable Dark [FloatingActionButton] Theme
  static FloatingActionButtonThemeData darkFloatingActionButtonTheme = const FloatingActionButtonThemeData(
    foregroundColor: TColors.darkFloatingActionButtonForeground,
    backgroundColor: TColors.darkFloatingActionButtonBackground,
    iconSize: TSizes.iconMd,
  );
}
