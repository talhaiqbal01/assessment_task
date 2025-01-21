import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';

/// Custom Class for Light & Dark [ProgressIndicator] Themes
class TProgressIndicatorTheme {
  TProgressIndicatorTheme._();

  /// Customizable Light [ProgressIndicator] Theme
  static const lightProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: TColors.lightProgressIndicator,
    refreshBackgroundColor: TColors.lightRefreshBackground,
  );

  /// Customizable Dark Progress Indicator Theme
  static const darkProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: TColors.darkProgressIndicator,
    refreshBackgroundColor: TColors.darkRefreshBackground,
  );
}