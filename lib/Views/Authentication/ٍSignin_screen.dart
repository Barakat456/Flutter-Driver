// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trans_app/Views/Authentication/Animation.dart';
import 'package:trans_app/Views/Authentication/base_auth.dart';

class Signin_Screen extends StatefulWidget {
  @override
  _Signin_ScreenState createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isHiddenpass = true;
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromRGBO(245, 127, 23, 1),
          Color.fromRGBO(245, 127, 23, 1),
          Color.fromRGBO(249, 168, 37, 1),
        ])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: <
            Widget>[
          SizedBox(
            height: 25,
          ),
          FadeAnimation(
              1.5,
              Padding(
                padding: EdgeInsets.only(right: 400),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => base_Screen()));
                  },
                ),
              )),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(
                  1.5,
                  Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  2.5,
                  Text(
                    "مرحبا بعودتك",
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(children: <Widget>[
                      FadeAnimation(
                        3,
                        Image(
                          image: AssetImage('assets/images/2.gif'),
                        ),
                      ),
                      FadeAnimation(
                        3.5,
                        Column(children: <Widget>[
                          Container(
                              height: 60,
                              width: 390,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 4,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(28.0))),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: TextField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.text,
                                  cursorColor: Colors.amberAccent,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      color: Colors.black,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w500),
                                  cursorHeight: 28,
                                  cursorWidth: 2,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.markunread_outlined,
                                      size: 28,
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: 'البريد الالكترونى او رقم الهاتف',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 22,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )),
                          Container(
                            height: 25,
                          ),
                          Container(
                              height: 60,
                              width: 390,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 4,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(28.0))),
                              child: Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: TextField(
                                  obscureText: _isHiddenpass,
                                  controller: _passwordController,
                                  keyboardType: TextInputType.text,
                                  cursorColor: Colors.amberAccent,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      color: Colors.black,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w500),
                                  cursorHeight: 28,
                                  cursorWidth: 2,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.lock_outline,
                                      size: 28,
                                      color: Colors.grey,
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Icon(
                                          _isHiddenpass
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          size: 28,
                                          color: Colors.grey[700]),
                                      onPressed: () {
                                        setState(() {
                                          _isHiddenpass = !_isHiddenpass;
                                        });
                                      },
                                    ),
                                    border: InputBorder.none,
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: 'كلمة السر',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 22,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          4,
                          Text(
                            "هل نسيت كلمة السر؟",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        4.5,
                        SizedBox(
                          width: 175,
                          child: FloatingActionButton.extended(
                            heroTag: null,
                            onPressed: () {
                              /* Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => Signup_Screen()));*/
                            },
                            label: Text(
                              'سجل دخول',
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
                      ),
                    ])),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
