import 'package:flutter/material.dart';
import 'package:islami/module/homeSceen/tabs/hadethTab.dart';

import 'hadethDetles.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName(
    this.hadeth,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routName, arguments: hadeth);
      },
    );
  }
}
