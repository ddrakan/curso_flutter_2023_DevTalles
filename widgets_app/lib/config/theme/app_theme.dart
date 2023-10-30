import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.indigo,
  Colors.cyan,
  Colors.black87
];

class AppTheme {

  final int selectedColor;
  final bool isDarkmode;

  AppTheme({
    this.isDarkmode = false,
    this.selectedColor = 0
}): assert(selectedColor >= 0, 'Selected color must be greater then 0'),
    assert(selectedColor < colorList.length,
    'Selected color must be less or equal then ${ colorList.length -1 }');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkmode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  );
}