import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [ListTile] Themes
class TListTileTheme {
  TListTileTheme._(); // To avoid creating instances

  /// Customizable Light [ListTile] Theme
  static ListTileThemeData lightListTileTheme = ListTileThemeData(
    tileColor: TColors.lightListTileBackground,
    shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(TSizes.borderRadiusSm)),
    iconColor: TColors.lightIcon,
    leadingAndTrailingTextStyle: const TextStyle().copyWith(fontWeight: FontWeight.w500, fontSize: TSizes.fontSizeSm, color: TColors.lightText),
    textColor: TColors.lightText,
    titleTextStyle: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: TSizes.fontSizeLg, color: TColors.lightText),
    subtitleTextStyle: const TextStyle().copyWith(fontWeight: FontWeight.w700, fontSize: TSizes.fontSizeSm, color: TColors.lightText),
  );

  /// Customizable Dark [ListTile] Theme
  static ListTileThemeData darkListTileTheme = ListTileThemeData(
    tileColor: TColors.darkListTileBackground,
    shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(TSizes.borderRadiusSm)),
    iconColor: TColors.darkText,
    leadingAndTrailingTextStyle: const TextStyle().copyWith(fontWeight: FontWeight.w500, fontSize: TSizes.fontSizeSm, color: TColors.darkText),
    textColor: TColors.darkText,
    titleTextStyle: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: TSizes.fontSizeLg, color: TColors.darkText),
    subtitleTextStyle: const TextStyle().copyWith(fontWeight: FontWeight.w700, fontSize: TSizes.fontSizeSm, color: TColors.darkText),
  );
}