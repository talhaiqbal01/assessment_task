import 'package:flutter/material.dart';
import '../../../core/utils/constants/colors.dart';
import '../../../core/utils/constants/sizes.dart';

/// Custom Class for Light & Dark [TabBar] Themes
class TTabBarTheme {
  TTabBarTheme._(); // To avoid creating instances

  /// Customizable Light [TabBar] Theme
  static TabBarTheme lightTabBarTheme = TabBarTheme(
    labelColor: TColors.lightTabBarLabel,
    labelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSizeSm, fontWeight: FontWeight.w500, color: TColors.lightTabBarLabel),
    dividerColor: TColors.lightTabBarDivider,
    indicatorColor: TColors.lightTabBarIndicator,
    unselectedLabelColor: TColors.lightTabBarUnselectedLabel,
    unselectedLabelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSizeSm, fontWeight: FontWeight.w500, color: TColors.lightTabBarUnselectedLabel),
  );

  /// Customizable Dark [TabBar] Theme
  static TabBarTheme darkTabBarTheme = TabBarTheme(
    labelColor: TColors.darkTabBarLabel,
    labelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSizeSm, fontWeight: FontWeight.w500, color: TColors.darkTabBarLabel),
    dividerColor: TColors.darkTabBarDivider,
    indicatorColor: TColors.darkTabBarIndicator,
    unselectedLabelColor: TColors.darkTabBarUnselectedLabel,
    unselectedLabelStyle: const TextStyle().copyWith(fontSize: TSizes.fontSizeSm, fontWeight: FontWeight.w500, color: TColors.darkTabBarUnselectedLabel),
  );
}
