import 'package:flutter/services.dart';

/// Utility class for device-related operations
class TDeviceUtils {
  TDeviceUtils._(); //-- To avoid creating instances

  /// Function to set screen orientation to specific options
  static Future<void> setPreferredOrientations() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}