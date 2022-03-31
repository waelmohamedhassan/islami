import 'package:flutter/material.dart';
import 'package:islami/models/itemBodyHageth.dart';
import 'package:islami/module/homeSceen/tabs/hadethTab.dart';
import 'package:islami/shared/components/appbar.dart';

class HadethDetails extends StatelessWidget {
  static const String routName = "HadethDetailsScreen";
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    verses = hadeth.content;

    return Stack(
      children: [
        Image.asset(
          "assets/images/bg3.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: appbarItem(text: hadeth.title),
          body: verses.length == 0
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (buildContext, index) {
                    return ItemBodyHadeth(verses[index]);
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
}
