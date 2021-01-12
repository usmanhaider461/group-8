import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  MyTextFormField({this.title, this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 40.0,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: Color(0xfffff7e2),
          filled: true,
          hintText: title,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
