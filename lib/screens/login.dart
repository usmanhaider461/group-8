import 'package:flutter/material.dart';
class Login extends StatelessWidget {
final  TextEditingController email = TextEditingController();
final  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff8f8f8),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 400,
               child: Image.asset('assets/logo-dark.png'),

              ),
              Container(
                height: 100,
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Login", style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff42452F),
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Welcome back", style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Lobster',
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
                  onPressed: (){},
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
