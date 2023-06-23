// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  bool ispassword;
  String hinttext;
  TextInputType textinputtype;

  MyTextfield(
      {super.key,
      required this.hinttext,
      required this.ispassword,
      required this.textinputtype});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textinputtype,
        obscureText: ispassword,
        decoration: InputDecoration(
          hintText: hinttext,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 80, 196, 120),
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
