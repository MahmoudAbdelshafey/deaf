import 'package:flutter/material.dart';

class ProjectThemeData {
  static Color Scaffold = Colors.black;
  static bool isDarkSelected = true;
  static Color lightPrimaryColor = Color(0xff357069);
  static Color lightPrimaryColorNav = Color.fromARGB(223, 222, 103, 12);
    static Color lightPrimaryColorgreen = Color(0xff06A794);

  static Color darkPrimaryColor = Color.fromARGB(255, 0, 5, 4);
  static Color shadowColor = Color.fromARGB(255, 0, 0, 0);
  static Color textStyle = Colors.white;

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    dividerColor: lightPrimaryColor,
    canvasColor: lightPrimaryColorNav,
    highlightColor: lightPrimaryColorgreen
    
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    dividerColor: shadowColor,
    canvasColor: shadowColor,
    cardColor: shadowColor,
    highlightColor: shadowColor,
    textTheme: ThemeData.dark().textTheme.apply(bodyColor: Colors.grey[300]),
  );
}
