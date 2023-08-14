import 'package:flutter/material.dart';

const Color _customColor = Color(0xD9E7224C);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.white,
  Colors.yellow,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0
      // required this.selectedColor
      })
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'colors must be between 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
