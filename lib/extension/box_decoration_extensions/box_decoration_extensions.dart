// ------------------------------------------------------------
// BoxDecoration Extensions
// ------------------------------------------------------------
import 'package:flutter/material.dart';

/// Helpful extensions for BoxDecoration to simplify adding radius, color, and shadow.
/// Example:
/// ```dart
/// BoxDecoration()
///   .withColor(Colors.white)
///   .radius(20)
///   .shadow(blur: 15);
/// ```
extension DecorationX on BoxDecoration {
  /// Adds a circular border radius.
  BoxDecoration radius([double r = 12]) =>
      copyWith(borderRadius: BorderRadius.circular(r));

  /// Sets the background color.
  BoxDecoration withColor(Color c) => copyWith(color: c);

  /// Adds a shadow to the decoration.
  BoxDecoration shadow({
    double blur = 12,
    double spread = 0,
    Color color = const Color(0x22000000),
    Offset offset = const Offset(0, 4),
  }) {
    return copyWith(
      boxShadow: [
        BoxShadow(
          blurRadius: blur,
          spreadRadius: spread,
          color: color,
          offset: offset,
        ),
      ],
    );
  }
}
