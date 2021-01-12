import 'package:flutter/material.dart';

class SubmitFormField extends StatelessWidget {
  final String name;
  final Function onPressed;
  SubmitFormField({this.name, this.onPressed});
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        color: Theme.of(context).primaryColor,
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
