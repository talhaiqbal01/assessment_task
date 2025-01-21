/* -- App Themes -- */

import 'package:assessment_task/config/themes/widget_themes/appbar_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/badge_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/bottom_navigation_bar_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/bottom_sheet_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/checkbox_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/chip_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/color_scheme.dart';
import 'package:assessment_task/config/themes/widget_themes/dialog_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/divider_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/drawer_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/dropdown_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/elevated_button_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/floating_action_button_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/icon_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/list_tile_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/navigation_drawer_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/outlined_button_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/pop_up_menu_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/progress_indicator_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/radio_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/slider_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/switch_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/tabbar_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/text_button_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/text_field_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/text_selection_theme.dart';
import 'package:assessment_task/config/themes/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
import '../../core/utils/constants/colors.dart';

/// This class contains all the App Custom Themes.
class TAppTheme {
  TAppTheme._(); // To avoid creating instances

  /// Customizable Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    badgeTheme: TBadgeTheme.lightBadgeTheme,
    splashColor: TColors.primary.withValues(alpha: 0.07),
    primaryColor: TColors.black,
    disabledColor: TColors.grey,
    dividerColor: TColors.lightDivider,
    dividerTheme: TDividerTheme.lightDividerTheme,
    progressIndicatorTheme: TProgressIndicatorTheme.lightProgressIndicatorTheme,
    colorScheme: TColorSchemeTheme.lightColorScheme,
    brightness: Brightness.dark,
    bottomNavigationBarTheme: TBottomNavigationBarTheme.lightBottomNavigationBarTheme,
    iconTheme: TIconTheme.lightIconTheme,
    radioTheme: TRadioTheme.lightRadioTheme,
    drawerTheme: TDrawerTheme.lightDrawerTheme,
    navigationDrawerTheme: TNavigationDrawerTheme.lightNavigationDrawerTheme,
    textSelectionTheme: TTextSelectionTheme.lightTextSelectionTheme,
    textButtonTheme: TTextButtonTheme.lightTextButtonTheme,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: TColors.lightBackground,
    dialogTheme: TDialogTheme.lightDialogTheme,
    dropdownMenuTheme: TDropdownTheme.lightDropdownMenuTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    tabBarTheme: TTabBarTheme.lightTabBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    floatingActionButtonTheme: TFloatingActionButtonTheme.lightFloatingActionButtonTheme,
    listTileTheme: TListTileTheme.lightListTileTheme,
    popupMenuTheme: TPopUpMenuTheme.lightPopUpMenuTheme,
    sliderTheme: TSliderTheme.lightSliderTheme,
    switchTheme: TSwitchTheme.lightSwitchTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  /// Customizable Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    badgeTheme: TBadgeTheme.darkBadgeTheme,
    splashColor: TColors.primary.withValues(alpha: 0.07),
    primaryColor: TColors.white,
    disabledColor: TColors.grey,
    dividerColor: TColors.darkDivider,
    dividerTheme: TDividerTheme.darkDividerTheme,
    progressIndicatorTheme: TProgressIndicatorTheme.darkProgressIndicatorTheme,
    colorScheme: TColorSchemeTheme.darkColorScheme,
    brightness: Brightness.light,
    bottomNavigationBarTheme: TBottomNavigationBarTheme.darkBottomNavigationBarTheme,
    iconTheme: TIconTheme.darkIconTheme,
    radioTheme: TRadioTheme.darkRadioTheme,
    drawerTheme: TDrawerTheme.darkDrawerTheme,
    navigationDrawerTheme: TNavigationDrawerTheme.darkNavigationDrawerTheme,
    textSelectionTheme: TTextSelectionTheme.darkTextSelectionTheme,
    textButtonTheme: TTextButtonTheme.darkTextButtonTheme,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TColors.darkBackground,
    dialogTheme: TDialogTheme.darkDialogTheme,
    dropdownMenuTheme: TDropdownTheme.darkDropdownMenuTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    tabBarTheme: TTabBarTheme.darkTabBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    floatingActionButtonTheme: TFloatingActionButtonTheme.darkFloatingActionButtonTheme,
    listTileTheme: TListTileTheme.darkListTileTheme,
    popupMenuTheme: TPopUpMenuTheme.darkPopUpMenuTheme,
    sliderTheme: TSliderTheme.darkSliderTheme,
    switchTheme: TSwitchTheme.darkSwitchTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
