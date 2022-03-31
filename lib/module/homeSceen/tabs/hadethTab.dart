import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/itemHadeth.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  List<Hadeth> myAhdeth = [];

  Widget build(BuildContext context) {
    if (myAhdeth.isEmpty) {
      readHadethFile();
    }
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/basmala.png"),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text("Ahdeth", style: Theme.of(context).textTheme.subtitle1),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Expanded(
              child: ListView.separated(
            itemCount: myAhdeth.length,
            itemBuilder: (context, index) {
              return ItemHadethName(myAhdeth[index]);
            },
            separatorBuilder: (buildContext, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                height: 1,
                color: Theme.of(context).primaryColor,
                width: double.infinity,
              );
            },
          ))
        ],
      ),
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth/ahadeth.txt");
    List<String> oneHadeth = fileContent.trim().split("#\r\n");
    for (int index = 0; index < oneHadeth.length; index++) {
      String onehadeth = oneHadeth[index];
      print(onehadeth);
      if (oneHadeth.isEmpty) continue;
      onehadeth.trim();
      List<String> lines = onehadeth.split("\n");

      if (lines[0].isEmpty) {
        lines.removeAt(0);
      }
      String title = lines[0];
      Hadeth hadethArg = Hadeth(title, lines);
      myAhdeth.add(hadethArg);
      print("wael");
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth(this.title, this.content);
}
