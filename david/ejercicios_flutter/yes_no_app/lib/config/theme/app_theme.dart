import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(15, 30, 255, 0);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            "Color must be between 0 and ${_colorThemes.length}");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor]);//,
        //brightness: Brightness.dark);
  }
}
