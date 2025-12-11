/// Number formatting helpers for integers.
///
/// Converts large numbers to readable formats like K or M.
extension IntX on int {
  /// Formats the number into "K" / "M" representation.
  ///
  /// Example: `1500.formatK` → `"1.5K"`
  String get formatK {
    if (this >= 1000000) return "${(this / 1000000).toStringAsFixed(1)}M";
    if (this >= 1000) return "${(this / 1000).toStringAsFixed(1)}K";
    return toString();
  }
}
