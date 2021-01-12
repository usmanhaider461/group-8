import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_8/widgets/haveAccountOrNot.dart';
import 'package:group_8/widgets/myPasswordFormField.dart';
import 'package:group_8/widgets/myTextFormField.dart';
import 'package:group_8/widgets/submitFormField.dart';
import 'package:group_8/widgets/toptitle.dart';
import 'package:group_8/widgets/gender.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController fullName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController password = TextEditingController();

  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = new RegExp(p);
  void validation() {
    if (email.text.isEmpty && password.text.isEmpty && address.text.isEmpty && fullName.text.isEmpty && phoneNumber.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Both Fields are Empty"),
      ));
    } else if (email.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Email is Empty"),
      ));
    }else if (fullName.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Name is Empty"),
      ));
    } else if (phoneNumber.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Phone Number is Empty"),
      ));
    }else if (address.text.isEmpty) {
      scaffold.currentState.showSnackBar(SnackBar(
        content: Text("Address is Empty"),
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

  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
        body: Container(
            padding: EdgeInsets.symmetric( horizontal: 30),
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/logo-dark.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                TopTitle(
                  title: "Sign Up",
                  subTitle: "Create an Account",
                ),
                Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyTextFormField(
                        controller: fullName,
                        title: 'Full Name',
                      ),
                      MyTextFormField(
                        controller: email,
                        title: 'Email',
                      ),
                      MyTextFormField(
                        controller: phoneNumber,
                        title: 'Phone Number',
                      ),
                      MyTextFormField(
                        controller: address,
                        title: 'Address',
                      ),
                      Gender(),
                      MyPasswordFormField(
                        controller: password,
                        title: 'Password',
                      ),
                      SubmitFormField(name: "Sign Up", onPressed: (){
                        validation();
                      },),
                      SizedBox(
                        height: 10,
                      ),
                      HaveAccountOrNot(onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> Login(),),);
                      },title: "I have already an account.",subTitle: "Sign In",)
                    ],
                  ),
                )
              ],
            ),),);
  }
}
