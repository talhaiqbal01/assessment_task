import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

/// Utility class for device-related operations
class TDeviceUtils {
  TDeviceUtils._(); //-- To avoid creating instances

  /// Function to set screen orientation to specific options
  static Future<void> setPreferredOrientations() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  /// Function to get device's [StatusBar] height
  static double getStatusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;

  /// Function to get device's screen height
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  /// Function to get device's screen width
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
}