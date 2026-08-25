import 'package:flutter/material.dart';

const List<Color> colors = [
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
  Color(0xffedff01),
];
final int maxRange = colors.length - 1;

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= maxRange,
        'Selected color should be from zero to $maxRange',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colors[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: true),
  );
}
