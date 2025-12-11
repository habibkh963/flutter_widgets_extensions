// ------------------------------------------------------------
// ListView Extensions
// ------------------------------------------------------------
import 'package:flutter/material.dart';

/// Converts a List<T> into a ListView.builder.
/// Example:
/// ```dart
/// items.toListView(
///   builder: (item) => Text(item.toString()),
/// );
/// ```
extension ListViewX<T> on List<T> {
  /// Creates a ListView.builder from the list.
  ListView toListView({
    required Widget Function(T item) builder,
    bool shrinkWrap = false,
    ScrollPhysics? physics,
  }) {
    return ListView.builder(
      itemCount: length,
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemBuilder: (_, i) => builder(this[i]),
    );
  }
}
