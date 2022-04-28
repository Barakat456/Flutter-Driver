// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class originalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color bgColor;
  const originalButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.textColor,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => bgColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
          onPressed: () {
            Navigator.of(context).pushNamed('login');
          },
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: textColor,fontWeight: FontWeight.bold),
          ),
       ),
    );
  }
}
