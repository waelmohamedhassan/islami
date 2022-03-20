import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_back.png"),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami"),
          ),
        ),
      ],
    );
  }
}
