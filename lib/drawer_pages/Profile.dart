// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
//import '../screens/drawer.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String imageAsset;
  const ProfilePage({
    Key? key,
    required this.name,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Image.asset(
          imageAsset,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        )
        /*Image.network(
        urlImage,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),*/
        );
  }
}
