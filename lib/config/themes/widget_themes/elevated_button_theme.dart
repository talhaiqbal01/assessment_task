import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [ElevatedButton] Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  /// Customizable Light [ElevatedButton] Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.lightElevatedButtonForeground,
      backgroundColor: TColors.lightElevatedButtonBackground,
      disabledForegroundColor: TColors.lightDisableElevatedButtonForeground,
      disabledBackgroundColor: TColors.lightDisableElevatedButtonBackground,
      textStyle: const TextStyle(fontSize: TSizes.buttonTextSize, color: TColors.lightBackground, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );

  /// Customizable Dark [ElevatedButton] Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.darkElevatedButtonForeground,
      backgroundColor: TColors.darkElevatedButtonBackground,
      disabledForegroundColor: TColors.darkDisableElevatedButtonForeground,
      disabledBackgroundColor: TColors.darkDisableElevatedButtonBackground,
      textStyle: const TextStyle(fontSize: TSizes.buttonTextSize, color: TColors.darkBackground, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    ),
  );
}
