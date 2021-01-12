import 'package:flutter/material.dart';
class HaveAccountOrNot extends StatelessWidget {
  final String title, subTitle;
  HaveAccountOrNot({this.title, this.subTitle});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(title),
        SizedBox(
          width: 10.0,
        ),
        Text(
          subTitle,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
