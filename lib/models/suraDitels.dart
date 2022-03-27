import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/shared/components/appbar.dart';

import 'itemVerses.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = "SuraDetailsScreen";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    if (verses.length == 0) loadFile("${args.index + 1}");

    return Stack(
      children: [
        Image.asset(
          "assets/images/bg3.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: appbarItem(text: args.suraName),
          body: verses.length == 0
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (buildContext, index) {
                    return ItemVerses(verses[index], index + 1);
                  },
                  itemCount: verses.length,
                  separatorBuilder: (buildContext, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      height: 1,
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                    );
                  },
                ),
        ),
      ],
    );
  }

  void loadFile(String fileName) async {
    String fileContent =
        await rootBundle.loadString("assets/files/$fileName.txt");
    List<String> verses = fileContent.split("\n");
    this.verses = verses;
    setState(() {});
  }
}

class SuraDetailsArg {
  String suraName;
  int index;

  SuraDetailsArg({required this.suraName, required this.index});
}
