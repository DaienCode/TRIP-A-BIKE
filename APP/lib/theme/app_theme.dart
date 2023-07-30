import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(19, 119, 27, 189);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.orangeAccent,
  Colors.teal,
  Colors.deepPurple,
  Colors.blueGrey,
  Colors.black,
  Colors.lightBlueAccent,
];

class AppThemes {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[2],
    );
  }
}
