
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
final  TextEditingController email = TextEditingController();
 static String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
static RegExp regExp = new RegExp(p);
void validation() {
  if(email.text.isEmpty && password.text.isEmpty) {
    scaffold.currentState.showSnackBar(SnackBar(content: Text("Both Fields are Empty"),));
  }
  else if(email.text.isEmpty){
    scaffold.currentState.showSnackBar(SnackBar(content: Text("Email is Empty"),));
  } if(!regExp.hasMatch(email.text)) {
    scaffold.currentState.showSnackBar(SnackBar(content: Text("Email is not correct"),));
  }
  else if (password.text.isEmpty) {
    scaffold.currentState.showSnackBar(SnackBar(content: Text("Password is Empty"),));
  } else if (password.text.length < 8) {
    scaffold.currentState.showSnackBar(SnackBar(content: Text("Password is too short"),));
  }
}
final  TextEditingController password = TextEditingController();
final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffold,
        backgroundColor: Color(0xfff8f8f8),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
               child: Image.asset('assets/logo-dark.png',
               height: 100, width: 100,
               )


              ),
              Container(
                height: 110,
                width: 400,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text("SignIn", style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Lobster',
                    color: Color(0xff42452F),
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Welcome back", style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff42452F),
                      fontWeight: FontWeight.normal
                  ),),
                ],
                ),

              ),
              Center(
                child: Container(
                  height: 200,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          fillColor: Color(0xfffff7e2),
                          filled: true,
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30.0)
                          )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color(0xfffff7e2),
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30.0)
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 400,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  color: Theme.of(context).primaryColor,

                  child: Text("Login", style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),),
                  onPressed: (){
                    validation();
                  },
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Don\' have Have an Account?'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Sign Up', style: TextStyle(
                    color: Theme.of(context).primaryColor
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
