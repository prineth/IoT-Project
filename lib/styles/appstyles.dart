import 'package:flutter/material.dart';

class AppStyles {
  static Color primaryColor = const Color(0xFF171724);

  

  static ButtonStyle mainButtons = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    primary: primaryColor,
  );

  static TextStyle whiteMenuTexts = const TextStyle(color: Colors.white);

  static TextStyle whiteSizedTexts(double fontSize) {
    return TextStyle(fontSize: fontSize, color: Colors.white);
  }

  static TextStyle whiteSizedColorTexts(double fontSize, Color color) {
    return TextStyle(fontSize: fontSize, color: color);
  }
}
