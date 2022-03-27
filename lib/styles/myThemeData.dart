import 'package:flutter/material.dart';

class MyThemeData {
  static var colorBlack = const Color.fromRGBO(36, 36, 36, 1);
  static var colorGold = const Color.fromRGBO(183, 147, 95, 1);
  static var textStyleAppbar =
      TextStyle(color: colorBlack, fontSize: 30, fontWeight: FontWeight.bold);
  static var lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: colorGold,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
              color: colorBlack, fontSize: 30, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              fontSize: 25, color: colorBlack, fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorGold, // <-- This works for fixed
        selectedItemColor: colorBlack,
        unselectedItemColor: Colors.white,
      ));

  static var darkTheme =
      ThemeData(appBarTheme: const AppBarTheme(color: Colors.transparent));
}
