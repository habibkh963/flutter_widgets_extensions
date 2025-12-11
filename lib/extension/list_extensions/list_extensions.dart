/// Utility extensions for working with List<T>.
///
/// Adds safe access and chunk splitting features.
extension ListX<T> on List<T> {
  /// Safely returns the item at the given index.
  ///
  /// Returns null if the index is out of bounds.
  ///
  /// Example:
  /// ```dart
  /// [].safeGet(1) → null
  /// ```
  T? safeGet(int index) => index < 0 || index >= length ? null : this[index];

  /// Splits the list into chunks of the given size.
  ///
  /// Example:
  /// ```dart
  /// [1,2,3,4].chunk(2) → [[1,2],[3,4]]
  /// ```

  List<List<T>> chunk(int size) {
    List<List<T>> chunks = [];
    for (var i = 0; i < length; i += size) {
      chunks.add(sublist(i, i + size > length ? length : i + size));
    }
    return chunks;
  }
}
