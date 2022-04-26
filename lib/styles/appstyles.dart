import 'package:flutter/material.dart';

class AppStyles {
  static Color primaryColor = const Color(0xFF232336);

  static ButtonStyle mainButtons = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    primary: primaryColor,

    
  );
}
