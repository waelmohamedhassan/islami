import 'package:flutter/material.dart';

class ItemBodyHadeth extends StatelessWidget {
  String text;

  ItemBodyHadeth(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(
        child: Text(
          "$text ",
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
