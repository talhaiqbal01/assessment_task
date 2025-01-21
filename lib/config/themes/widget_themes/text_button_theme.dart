import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';

/// Custom Class for Light & Dark [TextButton] Themes
class TTextButtonTheme {
  TTextButtonTheme._(); // To avoid creating instances

  /// Customizable Light [TextButton] Theme
  static const lightTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(color: TColors.lightTextButton, fontWeight: FontWeight.w600),
      ),
    ),
  );

  /// Customizable Dark [TextButton] Theme
  static const darkTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(color: TColors.darkTextButton, fontWeight: FontWeight.w600),
      ),
    ),
  );
}