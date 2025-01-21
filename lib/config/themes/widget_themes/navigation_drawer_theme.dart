import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [NavigationDrawer] Themes
class TNavigationDrawerTheme {
  TNavigationDrawerTheme._(); // To avoid creating instances

  /// Customizable Light [NavigationDrawer] Theme
  static NavigationDrawerThemeData lightNavigationDrawerTheme = NavigationDrawerThemeData(
    elevation: 0,
    backgroundColor: TColors.lightNavigationBarBackground,
    surfaceTintColor: TColors.lightNavigationBarSurfaceTint,
    indicatorColor: TColors.lightNavigationBarIndicator,
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
          (Set<WidgetState> states) => const IconThemeData(color: TColors.lightIcon, size: TSizes.iconSm),
    ),
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) => const TextStyle(color: TColors.lightText, fontSize: TSizes.fontSizeMd),
    ),
  );

  /// Customizable Dark [NavigationDrawer] Theme
  static NavigationDrawerThemeData darkNavigationDrawerTheme = NavigationDrawerThemeData(
    elevation: 0,
    backgroundColor: TColors.darkNavigationBarBackground,
    surfaceTintColor: TColors.darkNavigationBarSurfaceTint,
    indicatorColor: TColors.darkNavigationBarIndicator,
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
          (Set<WidgetState> states) => const IconThemeData(color: TColors.darkIcon, size: TSizes.iconSm),
    ),
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) => const TextStyle(color: TColors.darkText, fontSize: TSizes.fontSizeMd),
    ),
  );
}
