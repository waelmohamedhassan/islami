import 'package:flutter/material.dart';
import 'package:islami/module/homeScreen.dart';
import 'package:islami/styles/myThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      routes: {HomeScreen.routeName: (buildContext) => HomeScreen()},
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
    );
  }
}
