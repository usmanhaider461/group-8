import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TopTitle extends StatelessWidget {
  String title, subTitle;
  TopTitle({this.subTitle, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 110,
          width: 400,
          // padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text(title, style: TextStyle(
              fontFamily: 'Lobster',
              color: Color(0xff42452F),
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),),
            Text(subTitle, style: TextStyle(
                fontSize: 20,
                color: Color(0xff42452F),
                fontWeight: FontWeight.normal
            ),),
          ],
          ),

        );
  }
}
