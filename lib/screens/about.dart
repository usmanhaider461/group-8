import 'package:flutter/material.dart';
import 'package:group_8/screens/homepage.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => HomePage(),
              ),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "About",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: Text(
            'Group 8 \nUsman Haider \nGhulam Fatima \nAhtisham Waheed \nAbdul Jabbar \nUsama Saleem \nMuhammad Waseem \nSidra Saleem \nShoaib Gulzar \nShajar Irshad \nFakhar Zaman'
            ,style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
