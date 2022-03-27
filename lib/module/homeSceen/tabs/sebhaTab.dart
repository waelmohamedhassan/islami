import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> tasbeh = ["سبحان الله ", "الحمد لله", "الله اكبر"];
  int index = 0;
  int totalnum = 0;
  double angle = 20;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.08),
                    child: Image.asset(
                      "assets/images/head of seb7a.png",
                    )),
                Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.09),
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(
                          "assets/images/body of seb7a.png",
                        ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                "Number Of Praises",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(175, 151, 113, 1.0),
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(20),
                child: Text("$counter",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 20),
            Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(tasbeh[index],
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          angle += 20;
          counter++;
          totalnum++;
          if (totalnum == 33) {
            counter = 1;
            index = 1;
          }
          if (totalnum == 66) {
            counter = 1;
            index = 2;
          }
          if (totalnum == 99) {
            counter = 0;
            totalnum = 0;
            index = 0;
          }

          print("$counter");
          print("$totalnum");
        });
      },
    );

    //   (
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       SizedBox(height: 20,),
    //       Image.asset("assets/images/head of seb7a.png",),
    //
    //       Image.asset("assets/images/body of seb7a.png",),
    //       SizedBox(height: 40,),
    //       Text("Number Of Praises"),
    //       SizedBox(height: 25,),
    //       ElevatedButton(
    //         style:ButtonStyle(
    //           backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(183, 147, 95, 1.0),),
    //
    //         ),
    //         onPressed: () {
    //           setState(() {
    //             counter++;
    //           });
    //
    //         },
    //
    //         child: Text("$counter"),
    //       ),
    //
    //
    //     ],
    //   ),
    // );
  }
}
