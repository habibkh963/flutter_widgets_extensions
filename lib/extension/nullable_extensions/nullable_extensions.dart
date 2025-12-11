/// Nullable number helpers.
///
/// Ensures you always get a non-null value.
extension NullableNumX on num? {
  /// Returns the number or 0 if null.
  ///
  /// Example:
  /// ```dart
  /// 5.orZero → 5
  /// null.orZero → 0
  /// ```
  num get orZero => this ?? 0;
}

/// Nullable string helpers.
///
/// Ensures you always get a non-null string.
extension NullableStringX on String? {
  /// Returns the string or empty string if null.
  /// Example:
  /// ```dart
  /// 'hiiii'.orEmpty → hiiii

  /// null.orEmpty → ''
  /// ```
  String get orEmpty => this ?? "";
}
