import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [DropdownMenu] Themes
class TDropdownTheme {
  TDropdownTheme._(); // To avoid creating instances

  /// Customizable Light [DropdownMenu] Theme
  static DropdownMenuThemeData lightDropdownMenuTheme = DropdownMenuThemeData(
    textStyle: const TextStyle().copyWith(color: TColors.lightText, fontSize: TSizes.fontSizeSm, fontWeight: FontWeight.w600),
    inputDecorationTheme: const InputDecorationTheme(iconColor: TColors.lightIcon),
    menuStyle: const MenuStyle(
      backgroundColor: WidgetStatePropertyAll<Color>(TColors.lightMenuBackground),
      elevation: WidgetStatePropertyAll<double>(0.0),
      padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.all(TSizes.xs)),
      side: WidgetStatePropertyAll<BorderSide>(BorderSide(width: 1.0, style: BorderStyle.solid)),
    ),
  );

  /// Customizable Dark [DropdownMenu] Theme
  static DropdownMenuThemeData darkDropdownMenuTheme = DropdownMenuThemeData(
    textStyle: const TextStyle().copyWith(color: TColors.darkText, fontSize: TSizes.fontSizeSm, fontWeight: FontWeight.w600),
    inputDecorationTheme: const InputDecorationTheme(iconColor: TColors.darkIcon),
    menuStyle: const MenuStyle(
      backgroundColor: WidgetStatePropertyAll<Color>(TColors.darkMenuBackground),
      elevation: WidgetStatePropertyAll<double>(0.0),
      padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.all(TSizes.xs)),
      side: WidgetStatePropertyAll<BorderSide>(BorderSide(width: 1.0, style: BorderStyle.solid)),
    ),
  );
}
