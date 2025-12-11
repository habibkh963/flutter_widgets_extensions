/// Date formatting helpers for DateTime values.
///
/// Allows formatting using custom patterns.
extension DateX on DateTime {
  /// Formats the date using the provided pattern.
  ///
  /// Default: "yyyy-MM-dd HH:mm"
  ///
  /// Example:
  /// ```dart
  /// DateTime.now().format() → yyyy-MM-dd HH:mm
  /// ```
  String format([String pattern = "yyyy-MM-dd HH:mm"]) {
    return DateFormat(pattern).format(this);
  }
}
