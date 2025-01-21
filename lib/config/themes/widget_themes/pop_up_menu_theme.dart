import 'package:flutter/material.dart';
import 'package:assessment_task/core/utils/constants/sizes.dart';
import '../../../core/utils/constants/colors.dart';

/// Custom Class for Light & Dark [PopUpMenu] Themes
class TPopUpMenuTheme {
  TPopUpMenuTheme._(); // To avoid creating instances

  /// Customizable Light [PopUpMenu] Theme
  static PopupMenuThemeData lightPopUpMenuTheme = PopupMenuThemeData(
    color: TColors.lightPopupMenuBackgroundColor,
    shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
    elevation: 0,
    textStyle: const TextStyle(color: TColors.lightText, fontSize: TSizes.fontSizeMd, fontWeight: FontWeight.normal),
    labelTextStyle: WidgetStateProperty.all<TextStyle>(
      const TextStyle(color: TColors.lightText, fontSize: TSizes.fontSizeMd, fontWeight: FontWeight.normal),
    ),
  );

  /// Customizable Light [PopUpMenu] Theme
  static PopupMenuThemeData darkPopUpMenuTheme = PopupMenuThemeData(
    color: TColors.darkPopupMenuBackgroundColor,
    shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
    elevation: 0,
    textStyle: const TextStyle(color: TColors.darkText, fontSize: TSizes.fontSizeMd, fontWeight: FontWeight.normal),
    labelTextStyle: WidgetStateProperty.all<TextStyle>(
      const TextStyle(color: TColors.darkText, fontSize: TSizes.fontSizeMd, fontWeight: FontWeight.normal),
    ),
  );
}
