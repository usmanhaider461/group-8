import 'package:flutter/material.dart';
class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool isMale = false;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        isMale = !isMale;
      },
      child: Container(
        height: 40.0,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        padding: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        child: Text(isMale == false ? "Female": "Male" ,style: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        )),

        decoration: BoxDecoration(
          color: Color(0xfffff7e2),
          borderRadius: BorderRadius.circular(10),

        ),
      ),
    );
  }
}
