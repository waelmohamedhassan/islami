import 'package:flutter/material.dart';
import 'package:islami/models/suraDitels.dart';
import 'package:islami/module/homeSceen/homeScreen.dart';
import 'package:islami/styles/myThemeData.dart';

import 'models/hadethDetles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(context);
    return MaterialApp(
      title: 'Islami',
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetails.routName: (buildContext) => SuraDetails(),
        HadethDetails.routName: (buildContext) => HadethDetails(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
    );
  }
}
