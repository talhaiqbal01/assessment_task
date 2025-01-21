import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';

/// Custom Class for Light & Dark [Icon] Themes
class TIconTheme {
  TIconTheme._(); // To avoid creating instances

  /// Customizable Light [Icon] Theme
  static const lightIconTheme = IconThemeData(color: TColors.lightIcon);

  /// Customizable Dark [Icon] Theme
  static const darkIconTheme = IconThemeData(color: TColors.darkIcon);
}