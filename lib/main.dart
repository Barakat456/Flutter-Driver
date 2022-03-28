import 'package:flutter/material.dart';
import 'package:trans_app/Views/Authentication/%D9%8DSignin_screen.dart';
import 'package:trans_app/Views/Authentication/Signup_Screen.dart';
import 'package:trans_app/Views/Authentication/welcome.dart';
//import 'package:trans_app/Views/Authentication/welcome.dart';
//import 'Views/Authentication/base_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Signin_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
