// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trans_app/Views/Authentication/%D9%8DSignin_screen.dart';
import 'Signup_Screen.dart';

class base_Screen extends StatefulWidget {
  @override
  _base_ScreenState createState() => _base_ScreenState();
}

class _base_ScreenState extends State<base_Screen> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: Container(
        width: 500,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
              Color.fromARGB(255, 240, 51, 51),
              Color.fromRGBO(245, 127, 23, 1),
              Color.fromRGBO(255, 214, 0, 1),
            ])),
        /*BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"), fit: BoxFit.cover),
        ),*/
        child: Column(
          children: [
            Container(
              height: 100,
            ),
            Text("تسجيل دخول ",
                style: TextStyle(
                    height: 0,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                    color: Colors.white)),
            Text("&",
                style: TextStyle(
                    height: 0,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                    color: Colors.white)),
            Text("انشاء حساب",
                style: TextStyle(
                    height: 0,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                    color: Colors.white)),
            Image.asset(
              "assets/images/truck.png",
              height: 350,
              width: 500,
            ),
            SizedBox(
              width: 175,
              child: FloatingActionButton.extended(
                heroTag: null,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Signup_Screen()));
                },
                label: Text(
                  'انشاء حساب',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w900),
                ),
                elevation: 4,
                foregroundColor: Colors.white,
                backgroundColor: Colors.yellow[900],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(right: 50.0),
                  child: Row(
                    children: [
                      Text(
                        'هل لديك حساب؟',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                        child: Text(
                          'سجل دخول',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w700),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => Signin_Screen()));
                        },
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
