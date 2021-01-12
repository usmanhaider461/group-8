import 'package:flutter/material.dart';
class HaveAccountOrNot extends StatelessWidget {
  final String title, subTitle;
  final Function onTap;
  HaveAccountOrNot({this.onTap, this.title, this.subTitle});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(title),
        SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            subTitle,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    );
  }
}
