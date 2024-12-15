import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  //? sections of Colors
  static Color primaryColor = primary;
  static Color bgColors = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);

  //
  //
  //
  //
  //
  //
  //*--------------------------------------------------------------------------
  //? sections of TextStyle
  static TextStyle titleStyle = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle subTitleStyle = const TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
}
