// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:trans_app/Views/Authentication/%D9%8DSignin_screen.dart';
import 'package:trans_app/Views/Authentication/Signup_Screen.dart';
//import 'package:trans_app/screens/register.dart';
//import 'package:trans_app/wedgits/authForm.dart';
import 'package:trans_app/wedgits/original_button.dart';
//simport 'package:trans_app/screens/step_reg.dart';

class introScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.lightBlue,
    ));
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                //  color: Theme.of(context).primaryColor,
                /*  child: TextButton(
                  
                  style: TextButton.styleFrom(
                    // alignment: Alignment.topLeft,
                    primary: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  onPressed: () {},
                  child: Text('English'),
                ),*/
              ),
              // SizedBox(),

              Image.asset('assets/images/logo.png'),
              /* Text(
                'راجع فاضي',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  // height: ,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
            */
              SizedBox(height: 16),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup_Screen()));
                  },
                  child: Text(
                    'إنشاء حساب جديد',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 15),
              originalButton(
                text: 'تسجيل الدخول',
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
                textColor: Colors.lightBlue,
                bgColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
