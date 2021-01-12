import 'package:flutter/material.dart';
class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    bool isMale;
    return Container(
      height: 40.0,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      child: Text("Male" ,style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      )),

      decoration: BoxDecoration(
        color: Color(0xfffff7e2),
        borderRadius: BorderRadius.circular(10),

      ),
    );
  }
}
