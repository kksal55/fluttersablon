import 'package:flutter/material.dart';

class MyColors {
  BuildContext context;

  MyColors(this.context) : assert(context != null);
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
 static bool _darkModeEnabled = false;
  ThemeData? get temma {
    (Theme.of(context) == Brightness.dark)
        ? _darkModeEnabled = true
        : _darkModeEnabled = false;
  }
//  if (Theme.of(context) == Brightness.dark) {tema = false;}
  static const MaterialColor navy = MaterialColor(
    0xFFE43AAE,
    <int, Color>{
      50: Color(0xFFE43AAE),
      100: Color(0xFFE43AAE),
      200: Color(0xFFE43AAE),
      300: Color(0xFFE43AAE),
      400: Color(0xFFE43AAE),
      500: Color(0xFFE43AAE),
      600: Color(0xFFE43AAE),
      700: Color(0xFFE43AAE),
      800: Color(0xFFE43AAE),
      900: Color(0xFFE43AAE),
    },
  );
}
