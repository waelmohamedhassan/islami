import 'package:flutter/material.dart';

class MyThemeData {
  static var colorBlack = Color.fromRGBO(36, 36, 36, 1);
  static var colorGold = Color.fromRGBO(183, 147, 95, 1);
  static var textStyleAppbar =
      TextStyle(color: colorBlack, fontSize: 30, fontWeight: FontWeight.bold);
  static var lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: colorGold,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
              color: colorBlack, fontSize: 30, fontWeight: FontWeight.bold)));

  static var darkTheme =
      ThemeData(appBarTheme: AppBarTheme(color: Colors.transparent));
}
