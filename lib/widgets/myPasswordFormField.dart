import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  MyPasswordFormField({this.title, this.controller});

  @override
  _MyPasswordFormFieldState createState() => _MyPasswordFormFieldState();
}

class _MyPasswordFormFieldState extends State<MyPasswordFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 40,
      alignment: Alignment.centerLeft,

      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(onTap: () async {
            setState(() {
              obscureText = !obscureText;
            });

          },child: Icon(obscureText == true ? Icons.visibility : Icons.visibility_off)),
          fillColor: Color(0xfffff7e2),
          filled: true,
          hintText: widget.title,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
