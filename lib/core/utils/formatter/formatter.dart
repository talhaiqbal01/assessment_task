import 'package:intl/intl.dart';

/// Formatter class for formatting-related operations
class TFormatter {
  TFormatter._(); //-- To avoid creating instances

  /// Method to convert [DateTime] value to formatted [String]
  static String formatDateTime(DateTime dateTime) => DateFormat('EEE, MMM d y').format(dateTime);

  /// Method to convert [DateTime] value to [String] type time
  static String getTimeFromDateTime(DateTime dateTime) => DateFormat('hh:mm a').format(dateTime);
}