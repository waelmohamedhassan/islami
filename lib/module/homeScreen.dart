import 'package:flutter/material.dart';
import 'package:islami/shared/components/appbar.dart';

import '../shared/components/bottenBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_back.png"),
        Scaffold(
          appBar: appbarItem(
            text: "Islami",
          ),
          bottomNavigationBar: bottembar(
            icon1: "assets\images\quran.png",
            titleIcon1: "Quran",
            icon2: "assets\images\quran-quran-svgrepo-com.png",
            titleIcon2: "Hadeth",
            icon3: "assets\images\sebha_blue.png",
            titleIcon3: "Sebha",
            icon4: "assets\images\radio.png",
            titleIcon4: "Radio",
          ),
        ),
      ],
    );
  }
}
