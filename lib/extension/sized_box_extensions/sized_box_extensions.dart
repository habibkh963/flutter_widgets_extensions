// ------------------------------------------------------------
// SizedBox Extensions
// ------------------------------------------------------------

import 'package:flutter/material.dart';

/// Creates a vertical space using SizedBox with given height.
/// Example: `20.h`
extension SizedBoxX on num {
  /// Returns a SizedBox with height = this number.
  SizedBox get h => SizedBox(height: toDouble());

  /// Returns a SizedBox with width = this number.
  SizedBox get w => SizedBox(width: toDouble());

  /// Returns a SizedBox with both width and height = this number.
  SizedBox get s => SizedBox(width: toDouble(), height: toDouble());
}
