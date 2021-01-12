import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_8/widgets/haveAccountOrNot.dart';
import 'package:group_8/widgets/myPasswordFormField.dart';
import 'package:group_8/widgets/myTextFormField.dart';
import 'package:group_8/widgets/submitFormField.dart';
import 'package:group_8/widgets/toptitle.dart';
import 'package:group_8/widgets/gender.dart';

class SignUp extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController fullName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      SubmitFormField(name: "Sign Up", onPressed: (){},),
                      SizedBox(
                        height: 10,
                      ),
                      HaveAccountOrNot(title: "I have already an account.",subTitle: "Sign In",)
                    ],
                  ),
                )
              ],
            ),),);
  }
}
