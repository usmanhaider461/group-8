import 'package:flutter/material.dart';

class SubmitFormField extends StatelessWidget {
  final String name;
  final Function onPressed;
  SubmitFormField({this.name, this.onPressed});
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 400.0,
      height: 40,
      alignment: Alignment.centerLeft,
      child: RaisedButton(

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        color: Theme.of(context).primaryColor,
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
