import 'package:flutter/material.dart';

extension MYContext on BuildContext {
  Color dynamicColor({int? light, int? dark}) {
    return (Theme.of(this).brightness == Brightness.light)
        ? Color(light!)
        : Color(dark!);
  }

  Color dynamicColour({Color? light, Color? dark}) {
    return (Theme.of(this).brightness == Brightness.light)
        ? light!
        : dark!;
  }

  /// the white background
  Color get bgWhite => dynamicColor(light: 0xFFFFFFFF, dark: 0xFF000000);
  Color get bgust => dynamicColor(light: 0xFFFFFFFF, dark: 0xFF0A0A0A);
}