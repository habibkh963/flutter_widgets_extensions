import 'package:flutter/material.dart';

/// Helpful shortcuts for BuildContext.
///
/// Provides easy access to screen size, theme, and navigation.
extension ContextX on BuildContext {
  /// Returns the screen height.
  ///
  /// Shortcut for: `MediaQuery.of(context).size.height`
  double get h => MediaQuery.of(this).size.height;

  /// Returns the screen width.
  ///
  /// Shortcut for: `MediaQuery.of(context).size.width`
  double get w => MediaQuery.of(this).size.width;

  /// Returns the current ThemeData instance.
  ThemeData get theme => Theme.of(this);

  /// Returns the current TextTheme instance.
  TextTheme get text => Theme.of(this).textTheme;

  /// Pops the current navigation route.
  void pop() => Navigator.of(this).pop();

  /// Pushes a new page using MaterialPageRoute.
  ///
  /// Example:
  /// ```dart
  /// context.push(MyPage());
  /// ```
  Future push(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => page));
}
