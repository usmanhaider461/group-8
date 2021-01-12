import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_8/widgets/haveAccountOrNot.dart';
import 'package:group_8/widgets/myPasswordFormField.dart';
import 'package:group_8/widgets/myTextFormField.dart';
import 'package:group_8/widgets/submitFormField.dart';
import 'package:group_8/widgets/toptitle.dart';

class Login extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = new RegExp(p);
  void validation() {
    if (email.text.isEmpty && password.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Both Fields are Empty"),
      ));
    } else if (email.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Email is Empty"),
      ));
    }
    if (!regExp.hasMatch(email.text)) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Email is not correct"),
      ));
    } else if (password.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Password is Empty"),
      ));
    } else if (password.text.length < 8) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Password is too short"),
      ));
    }
  }

  final TextEditingController password = TextEditingController();
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffold,
      backgroundColor: Color(0xfff8f8f8),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric( horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset(
                'assets/logo-dark.png',
                height: 100,
                width: 100,
              ),
              ),
              TopTitle(
                subTitle: "Welcome Back",
                title: "Sign In",
              ),
              Center(
                child: Container(
                  height: 170,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyTextFormField(title: "Email", controller: email),
                      SizedBox(
                        height: 10,
                      ),
                      MyPasswordFormField(title: "password", controller: password,)
                    ],
                  ),
                ),
              ),
              SubmitFormField(name: 'Sign In', onPressed: () => validation()),
              SizedBox(
                height: 15.0,
              ),
              HaveAccountOrNot(subTitle: 'SignUp', title: 'Don\'t have an account?')
            ],
          ),
        ),
      ),
    );
  }
}
