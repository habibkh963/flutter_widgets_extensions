# Flutter Useful Extensions (README)

This document contains all convenient Flutter extensions requested, along with documentation comments so they appear in IntelliSense suggestions.

---

## 📌 SizedBox Extensions
```dart
/// Creates a vertical space.
extension SizedBoxHeight on num {
  /// Shortcut for creating a vertical SizedBox.
  SizedBox get h => SizedBox(height: toDouble());
}

/// Creates a horizontal space.
extension SizedBoxWidth on num {
  /// Shortcut for creating a horizontal SizedBox.
  SizedBox get w => SizedBox(width: toDouble());
}
```

---

## 📌 Padding Extensions
```dart
/// Adds symmetric padding to any widget.
extension PaddingX on Widget {
  /// Adds vertical & horizontal padding quickly.
  Padding padSym({double v = 0, double h = 0}) => Padding(
        padding: EdgeInsets.symmetric(vertical: v, horizontal: h),
        child: this,
      );

  /// Adds uniform padding.
  Padding padAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );
}
```

---

## 📌 Decoration Extensions
```dart
/// Easily create BoxDecoration shortcuts.
extension BoxDecorationX on BoxDecoration {
  /// Adds a border radius to an existing decoration.
  BoxDecoration withRadius(double radius) => copyWith(
        borderRadius: BorderRadius.circular(radius),
      );

  /// Adds a shadow to an existing decoration.
  BoxDecoration withShadow({double blur = 10, double spread = 1}) => copyWith(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: blur,
            spreadRadius: spread,
          ),
        ],
      );
}
```

---

## 📌 ListView Extensions
```dart
/// Quick list-to-ListView converter.
extension ListViewX on List<Widget> {
  /// Converts a widget list to ListView.
  ListView toListView({bool shrink = false}) => ListView(
        shrinkWrap: shrink,
        children: this,
      );
}
```

---

## 📌 GridView Extensions
```dart
/// Quick list-to-GridView conversion.
extension GridViewX on List<Widget> {
  /// Converts a widget list to a GridView with customizable crossAxisCount.
  GridView toGrid({int count = 2, double spacing = 10}) => GridView.count(
        crossAxisCount: count,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        children: this,
      );
}
```

---

## 📌 MediaQuery Extensions
```dart
/// Shortcuts for screen height and width.
extension ContextMedia on BuildContext {
  /// Returns screen width.
  double get w => MediaQuery.of(this).size.width;

  /// Returns screen height.
  double get h => MediaQuery.of(this).size.height;
}
```

---

## 📌 String Extensions
```dart
/// String helpers.
extension StringX on String {
  /// Capitalizes the first letter of the string.
  String get capitalized => isEmpty ? this : "${this[0].toUpperCase()}${substring(1)}";
}
```

---

# ✅ Ready to Use
كل الإكستنشنز جاهزين للاستخدام — انسخ الملف، وحطه بأي مكان بمشروعك، وراح يطلعوا كلهم بالـ IntelliSense مع الشرح.

إذا بدك أرتّبهم بملفات منفصلة (sized_box.dart – padding.dart – grid.dart…), خبرني يا خيي!

