import 'package:flutter/material.dart';
import 'package:islami/styles/myThemeData.dart';

PreferredSizeWidget appbarItem({
  required String text,
  bool isCenter = true,
  var textStyle,
}) =>
    AppBar(
      title: Text(text, style: textStyle = MyThemeData.textStyleAppbar),
      centerTitle: isCenter,
    );
