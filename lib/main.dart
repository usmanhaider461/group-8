import 'package:flutter/material.dart';
import 'package:group_8/screens/login.dart';
import 'package:group_8/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFFC737),
      ),
      home: SignUp(),
    );
  }
}

