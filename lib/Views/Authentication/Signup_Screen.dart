// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:trans_app/Views/Authentication/Animation.dart';
import 'package:trans_app/Views/Authentication/base_auth.dart';

class Signup_Screen extends StatefulWidget {
  @override
  _Signup_ScreenState createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmepasswordController =
      TextEditingController();
  bool _isHiddenpass = true;
  bool _isHiddenconfirm = true;
  late String dropdownValue = 'اختر محل الاقامة';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromRGBO(245, 127, 23, 1),
          Color.fromRGBO(245, 127, 23, 1),
          Color.fromRGBO(249, 168, 37, 1),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => base_Screen()));
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
                      "انشاء حساب",
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
                      "مرحبا بك",
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
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                          3,
                          Column(
                            children: <Widget>[
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(28.0))),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: TextField(
                                      controller: _firstnameController,
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
                                          Icons.person_outlined,
                                          size: 28,
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                        hintTextDirection: TextDirection.rtl,
                                        hintText: 'الاسم الاول',
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(28.0))),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: TextField(
                                      controller: _lastnameController,
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
                                          Icons.person_outlined,
                                          size: 28,
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                        hintTextDirection: TextDirection.rtl,
                                        hintText: 'الاسم الاخير',
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(28.0))),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: TextField(
                                      controller: _phonenumberController,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9.,]')),
                                      ],
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
                                        border: InputBorder.none,
                                        suffixIcon: CountryCodePicker(
                                          closeIcon: Icon(
                                            Icons.highlight_off_outlined,
                                            size: 30,
                                          ),
                                          initialSelection: 'EG',
                                          favorite: ['+20', 'EG'],
                                          showCountryOnly: false,
                                          showOnlyCountryWhenClosed: false,
                                          alignLeft: false,
                                        ),
                                        hintTextDirection: TextDirection.rtl,
                                        hintText: 'رقم الموبايل',
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(28.0))),
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
                                        hintText: 'البريد الالكترونى',
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(28.0))),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(28.0))),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: TextField(
                                      obscureText: _isHiddenconfirm,
                                      controller: _confirmepasswordController,
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
                                              _isHiddenconfirm
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              size: 28,
                                              color: Colors.grey[700]),
                                          onPressed: () {
                                            setState(() {
                                              _isHiddenconfirm =
                                                  !_isHiddenconfirm;
                                            });
                                          },
                                        ),
                                        border: InputBorder.none,
                                        hintTextDirection: TextDirection.rtl,
                                        hintText: 'تاكيد كلمة السر',
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
                                width: 390,
                                height: 60,
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(28.0))),
                                child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsets.only(bottom: 8),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Icon(
                                              Icons.arrow_drop_down_outlined,
                                              size: 28,
                                              color: Colors.grey[700]),
                                        )),
                                    dropdownColor: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60),
                                      topRight: Radius.circular(60),
                                      bottomLeft: Radius.circular(60),
                                      bottomRight: Radius.circular(60),
                                    ),
                                    isExpanded: true,
                                    value: dropdownValue,
                                    icon: Padding(
                                      padding: EdgeInsets.only(top: 13),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        size: 28,
                                        color: Colors.grey,
                                        textDirection: TextDirection.rtl,
                                      ),
                                    ),
                                    onChanged: (String? newValue) {
                                      print(newValue);
                                    },
                                    alignment: AlignmentDirectional.center,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 22,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400),
                                    items: <String>[
                                      'اختر محل الاقامة',
                                      'الإسماعيلية',
                                      'الإسكندرية',
                                      'القاهرة',
                                      'أسوان',
                                      'أسيوط',
                                      'الأقصر',
                                      'البحرالأحمر',
                                      'البحيرة',
                                      'بني سويف',
                                      'بور سعيد',
                                      'جنوب سيناء',
                                      'الجيزة',
                                      'الدقهلية',
                                      'دمياط',
                                      'سوهاج',
                                      'السويس',
                                      'الشرقية',
                                      'الغربية',
                                      'الفيوم',
                                      'القليوبية',
                                      'قنا',
                                      'كفر الشيخ',
                                      'شمال سيناء',
                                      'مطروح',
                                      'المنوفية',
                                      'الوادي الجديد',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: ListTile(
                                                title: Text(
                                              value,
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 22,
                                                  fontFamily: 'Tajawal',
                                                  fontWeight: FontWeight.w400),
                                            ))),
                                        alignment: AlignmentDirectional.topEnd,
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          3.3,
                          SizedBox(
                            width: 175,
                            child: FloatingActionButton.extended(
                              heroTag: null,
                              onPressed: () {
                                /* Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => Signup_Screen()));*/
                              },
                              label: Text(
                                'انشئ حساب',
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
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                            3.3,
                            Text(
                              "او",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          3.3,
                          SizedBox(
                            width: 175,
                            child: FloatingActionButton.extended(
                              heroTag: null,
                              onPressed: () {
                                /* Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => Signup_Screen()));*/
                              },
                              label: Text(
                                'فيس بوك',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w900),
                              ),
                              elevation: 4,
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
