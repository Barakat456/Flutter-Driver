// ignore_for_file: prefer_const_constructors, camel_case_types, override_on_non_overriding_member, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'intro_screen.dart';
import 'package:trans_app/wedgits/authForm.dart';

enum AuthType { login, register }

class authScreen extends StatelessWidget {
  final AuthType authType;
  const authScreen({
    Key? key,
    required this.authType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      BackButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>introScreen()));
                        },
                      ),
                      Image.asset(
                        'assets/images/logox.png',
                        height: 350,
                      ),
                    ],
                  ),
                )
              ],
            ),
            authForm(authType: authType),
          ],
        ),
      ),
    );
  }
}
