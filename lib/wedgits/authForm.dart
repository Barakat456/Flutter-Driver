// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, file_names, avoid_web_libraries_in_flutter, unused_field, unused_element

// ignore_for_file: prefer_const_constructors

//import 'dart:ffi';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:flutter/material.dart';
import 'package:trans_app/screens/auth_screen.dart';
import 'package:trans_app/screens/register.dart';
//import 'original_button.dart';
//import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/services.dart';

class authForm extends StatefulWidget {
  final AuthType authType;
  const authForm({
    Key? key,
    required this.authType,
  }) : super(key: key);

  @override
  _authFormState createState() => _authFormState();
}

bool isChecked = false;

class _authFormState extends State<authForm> {
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
      statusBarColor: Colors.blue,
    ));
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextFormField(
                  validator: Validators.compose([
                    Validators.required('يجب إدخال البريد الإلكتروني'),
                    Validators.email('بريد إلكتروني غير صالح'),
                  ]),
                  controller: phoneController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.phone_android,
                        color: Colors.grey,
                      ), // icon is 48px widget.
                    ),
                    hintText: 'البريد الإلكتروني أو رقم الهاتف',
                    prefix: Padding(
                      padding: EdgeInsets.all(0),
                      // child: Text('+20'),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 12),
                TextFormField(
                  validator: Validators.compose([
                    Validators.required('يجب إدخال كلمة السر'),
                    Validators.patternString(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                        'كلمة السر غير صالحة')
                  ]),
                  decoration: InputDecoration(
                    hintText: "كلمة السر",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ), // icon is 48px widget.
                    ),
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                CheckboxListTile(
                  title: const Text(
                    'موافق علي الشروط والأحكام',
                    overflow: TextOverflow.ellipsis,
                  ),
                  shape: CircleBorder(),
                  autofocus: false,
                  value: isChecked,
                  onChanged: (b) {
                    setState(() {
                      isChecked = b!;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.blue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      // isChecked ? displayMessage : null;
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('يتم معالجة البيانات')),
                        );
                      }
                    },
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registerForm()));
                  },
                  child: Text(
                    'هل نسيت كلمة السر ؟',
                    style: TextStyle(fontSize: 15, color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  /*void displayMessage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          AlertDialog dialog = AlertDialog(
            content: Text('you have accepted the terms'),
            actions: [
              TextButton(onPressed:(){Navigator.of(context).pop;}, child: Text('data'))
            ],
          );
          return dialog;
        });
  }*/

  getlist() {}
}
