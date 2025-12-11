import 'package:flutter/material.dart';

/// UI utility extensions for Widget.
///
/// Allows adding padding, margin, and tap behavior quickly.
extension WidgetX on Widget {
  /// Wraps the widget with padding.
  ///
  /// Default padding is 8 if not provided.
  ///
  /// Example:
  /// ```dart
  /// Text("Tap me").padding()
  /// ```
  Widget padding([EdgeInsetsGeometry? v]) =>
      Padding(padding: v ?? const EdgeInsets.all(8), child: this);

  /// Wraps the widget inside a margin container.
  ///
  /// Default margin is 8 if not provided.
  ///  ///
  /// Example:
  /// ```dart
  /// Text("Tap me").margin()
  /// ```
  Widget margin([EdgeInsetsGeometry? v]) =>
      Container(margin: v ?? const EdgeInsets.all(8), child: this);

  /// Wraps the widget with a GestureDetector to add tap behavior.
  ///
  /// Example:
  /// ```dart
  /// Text("Tap me").onTap(() {})
  /// ```
  Widget onTap(VoidCallback onTap) =>
      GestureDetector(onTap: onTap, child: this);
}
