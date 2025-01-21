import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/colors.dart';

/// Helper class for app-related operations
class THelperFunctions {
  THelperFunctions._(); //-- To avoid creating instances

  /// Function to check if the app is in dark mode or not
  static bool isDarkMode(BuildContext context) => Theme.of(context).brightness == Brightness.light;

  /// Function to set system UI to background colors
  static void setSystemUIOverlay(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: isDark ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDark ? TColors.darkSystemNavigationAppBar : TColors.lightSystemNavigationAppBar,
        systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
    );
  }
}