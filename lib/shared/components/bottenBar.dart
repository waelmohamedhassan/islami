import 'package:flutter/material.dart';

BottomNavigationBar bottomBar({
  required String icon1,
  required String icon2,
  required String icon3,
  required String icon4,
  required String titleIcon1,
  required String titleIcon2,
  required String titleIcon3,
  required String titleIcon4,
  int currentIndex = 0,
  required Function,
}) =>
    BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: Function,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon1)), label: titleIcon1),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon2)), label: titleIcon2),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon3)), label: titleIcon3),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(icon4)), label: titleIcon4),
      ],
    );
