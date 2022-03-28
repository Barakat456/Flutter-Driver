// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trans_app/Views/Authentication/base_auth.dart';

class Welcome_screen extends StatefulWidget {
  @override
  _Welcome_screenState createState() => _Welcome_screenState();
}

class _Welcome_screenState extends State<Welcome_screen> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow[900],
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 27,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => base_Screen()),
            );
          }),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/new.jpg"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 270.0),
                child: Text(
                  'مرحبا بك فى  ',
                  style: TextStyle(
                      fontFamily: 'NotoNastaliqUrdu',
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      color: Colors.yellow[900]),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 240.0),
                child: Text(
                  'تنقلنى',
                  style: TextStyle(
                      fontFamily: 'NotoNastaliqUrdu',
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      color: Colors.yellow[900]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
