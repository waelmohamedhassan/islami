import 'package:flutter/material.dart';
import 'package:islami/module/homeSceen/tabs/hadethTab.dart';
import 'package:islami/module/homeSceen/tabs/quranTab.dart';
import 'package:islami/module/homeSceen/tabs/radioTab.dart';
import 'package:islami/module/homeSceen/tabs/sebhaTab.dart';
import 'package:islami/shared/components/appbar.dart';

import '../../shared/components/bottenBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<String> titlename = ["Quran", "Hadeth", "Sebha", "Radio"];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/bg3.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: appbarItem(
            text: titlename[currentIndex],
          ),
          bottomNavigationBar: bottomBar(
            icon1: "assets/images/quran.png",
            titleIcon1: "Quran",
            icon2: "assets/images/quran-quran-svgrepo-com.png",
            titleIcon2: "Hadeth",
            icon3: "assets/images/sebha_blue.png",
            titleIcon3: "Sebha",
            icon4: "assets/images/radio.png",
            titleIcon4: "Radio",
            Function: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: tabs[currentIndex],
          ),
        ),
      ],
    );
  }

  var tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];
}
