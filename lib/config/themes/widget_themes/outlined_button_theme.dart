import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [OutlinedButton] Themes
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances

  /// Customizable Light [OutlinedButton] Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.lightOutlinedButtonForeground,
      disabledForegroundColor: TColors.lightDisableOutlinedButtonForeground,
      side: const BorderSide(color: TColors.lightOutlinedButtonForeground, width: TSizes.buttonSideWidth),
      textStyle: const TextStyle(fontSize: TSizes.buttonTextSize, color: TColors.lightText, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );

  /// Customizable Dark [OutlinedButton] Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.darkOutlinedButtonForeground,
      disabledForegroundColor: TColors.darkDisableOutlinedButtonForeground,
      side: const BorderSide(color: TColors.darkOutlinedButtonForeground, width: TSizes.buttonSideWidth),
      textStyle: const TextStyle(fontSize: TSizes.buttonTextSize, color: TColors.darkText, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );
}
