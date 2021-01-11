import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff8f8f8),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 400,
                color: Colors.blue,
                child: Column(
                children: [
                  Text("Login", style: TextStyle(
                    fontSize: 40,
                    color: Theme.of(context).primaryColor,
                  ),)
                ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
