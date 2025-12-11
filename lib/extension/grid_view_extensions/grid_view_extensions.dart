// ------------------------------------------------------------
// GridView Extensions
// ------------------------------------------------------------
import 'package:flutter/material.dart';

/// Converts a List<T> into a GridView.builder.
/// Example:
/// ```dart
/// products.toGridView(
///   builder: (p) => ProductCard(p),
///   cross: 3,
/// );
/// ```
extension GridViewX<T> on List<T> {
  /// Creates a GridView.builder from the list.
  GridView toGridView({
    required Widget Function(T item) builder,
    int cross = 2,
    double spacing = 10,
    double ratio = 1,
    EdgeInsets padding = EdgeInsets.zero,
  }) {
    return GridView.builder(
      padding: padding,
      itemCount: length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: cross,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        childAspectRatio: ratio,
      ),
      itemBuilder: (_, i) => builder(this[i]),
    );
  }
}
