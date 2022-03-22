import 'package:flutter/material.dart';

BottomNavigationBar bottembar({
  required String icon1,
  required String icon2,
  required String icon3,
  required String icon4,
  required String titleIcon1,
  required String titleIcon2,
  required String titleIcon3,
  required String titleIcon4,
}) =>
    BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon1)), label: titleIcon1),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon1)), label: titleIcon2),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon1)), label: titleIcon3),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon1)), label: titleIcon4),
      ],
    );
