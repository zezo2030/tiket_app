import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  //? sections of Colors
  static Color primaryColor = primary;
  static Color bgColors = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlueColor = const Color(0xFF526799);
  static Color ticketOrangeColor = const Color(0xFFF37B67);

  //
  //
  //
  //
  //
  //
  //*--------------------------------------------------------------------------
  //? sections of TextStyle

  static TextStyle textStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle headLineStyle = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21.0,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
}
