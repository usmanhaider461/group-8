import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_8/screens/homepage.dart';
import 'package:group_8/widgets/haveAccountOrNot.dart';
import 'package:group_8/widgets/myPasswordFormField.dart';
import 'package:group_8/widgets/myTextFormField.dart';
import 'package:group_8/widgets/submitFormField.dart';
import 'package:group_8/widgets/toptitle.dart';
import 'package:group_8/widgets/gender.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = new RegExp(p);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;
  bool isMale = false;
  UserCredential authResult;

  void submit() async {
    setState(() => isLoading = true);
    try {
      authResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
    } on PlatformException catch (e){
      String message = "Please Check Internet";
      if(e.message != null) {
        message = e.message.toString();
      }
      scaffold.currentState.showSnackBar(SnackBar(content: Text(message),),);
      setState(() => isLoading = false);
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      scaffold.currentState.showSnackBar(SnackBar(content: Text(e.toString()),
      ),
      );
    }
    await FirebaseFirestore.instance.collection("userData").doc(authResult.user.uid).set({
      "UserName": fullName.text,
      "UserEmail": email.text,
      "UserNumber": phoneNumber.text,
      "UserAddress": address.text,
      "UserId": authResult.user.uid,
      "UserGender": isMale ? 'Male' : 'Female',
    });
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
    setState(() {
      isLoading  = false;
    });
  }

  final TextEditingController email = TextEditingController();

  final TextEditingController fullName = TextEditingController();

  final TextEditingController phoneNumber = TextEditingController();

  final TextEditingController address = TextEditingController();

  final TextEditingController password = TextEditingController();

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
    if (!SignUp.regExp.hasMatch(email.text)) {
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
    } else {
      submit();
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = !isMale;
                          });
                        },
                        child: Container(
                          height: 40.0,
                          margin: EdgeInsets.only(top: 10),
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              isMale == false ? "Female": "Male" ,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              )),

                          decoration: BoxDecoration(
                            color: Color(0xfffff7e2),
                            borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                      ),
                      MyPasswordFormField(
                        controller: password,
                        title: 'Password',
                      ),
                      isLoading == false ? SubmitFormField(name: "Sign Up", onPressed: (){
                        validation();
                      },) : Center(
                        child: CircularProgressIndicator(),
                      ),
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
