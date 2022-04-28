import 'package:flutter/material.dart';
//import 'package:trans_app/Views/Authentication/%D9%8DSignin_screen.dart';
//import 'package:trans_app/Views/Authentication/Signup_Screen.dart';
import 'package:trans_app/Views/Authentication/base_auth.dart';
//import 'package:trans_app/Views/Authentication/welcome.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), // arabic, no country code
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: base_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
