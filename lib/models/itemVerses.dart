import 'package:flutter/material.dart';

class ItemVerses extends StatelessWidget {
  String text;
  int index;

  ItemVerses(this.text, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(
        child: Text(
          "$text {$index}",
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
