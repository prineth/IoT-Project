import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStyles {
  static Color primaryColor = const Color(0xFF171724);

  static AppBarTheme appBarTheme = AppBarTheme(
    color: primaryColor,
    iconTheme: const IconThemeData(color: Colors.white),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    toolbarTextStyle: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
    ).bodyText2,
    titleTextStyle: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
    ).headline6,
  );

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
