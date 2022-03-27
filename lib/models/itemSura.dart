import 'package:flutter/material.dart';
import 'package:islami/models/suraDitels.dart';

class ItemSura extends StatelessWidget {
  String suraName;
  int index;

  ItemSura(this.suraName, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text(
            suraName,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routName,
            arguments: SuraDetailsArg(suraName: suraName, index: index));
      },
    );
  }
}
