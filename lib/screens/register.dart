// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trans_app/wedgits/original_button.dart';
class registerForm extends StatelessWidget {
  const registerForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          originalButton(text: 'Mohamed', onPressed: (){}, textColor:Colors.black, bgColor: Colors.white),
        ],
      ),
    );
  }
}