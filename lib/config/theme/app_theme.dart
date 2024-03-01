import 'package:flutter/material.dart';

const Color customColor = Color(0xFF49149f);

const List<Color> colorThemes = [
  customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.teal,
  Colors.deepPurple,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

class AppTheme {
  final int SelectedColor;

  AppTheme({this.SelectedColor = 0})
      : assert(SelectedColor >= 0 && SelectedColor <= colorThemes.length - 1,
            "los colores necesitan estar entre 0 y ${colorThemes.length}");

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: colorThemes[SelectedColor]);
  }
}
