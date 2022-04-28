// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class PeoplePage extends StatelessWidget {
  const PeoplePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('المدينة',style: TextStyle(fontFamily: 'Tajawal',),),
        backgroundColor: Colors.blue,
      ),
      
    );
  }
}