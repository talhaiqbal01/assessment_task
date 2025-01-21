import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';

/// Custom Class for Light & Dark [TextSelection] Themes
class TTextSelectionTheme {
  TTextSelectionTheme._(); // To avoid creating instances

  /// Customizable Light [TextSelection] Theme
  static const lightTextSelectionTheme = TextSelectionThemeData(cursorColor: TColors.lightCursor);

  /// Customizable Dark [TextSelection] Theme
  static const darkTextSelectionTheme = TextSelectionThemeData(cursorColor: TColors.darkCursor);
}
