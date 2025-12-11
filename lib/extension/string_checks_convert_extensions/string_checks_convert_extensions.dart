/// Useful helper extensions for String values.
///
/// Includes parsing, validation and formatting utilities.
extension StringX on String {
  /// Converts the string to an integer.
  ///
  /// Returns 0 if parsing fails.
  int toInt() => int.tryParse(this) ?? 0;

  /// Converts the string to a double.
  ///
  /// Returns 0.0 if parsing fails.
  double toDouble() => double.tryParse(this) ?? 0.0;

  /// Checks if the string matches a valid email pattern.
  ///
  /// Returns true if the string is a valid email.
  bool get isEmail => RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(this);

  /// Capitalizes the first letter of the string.
  ///
  /// Example: `"hello".capitalize` → `"Hello"`
  String get capitalize =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}
