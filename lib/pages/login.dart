// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_level3/pages/register.dart';
import 'package:ecommerce_app_level3/pages/shared/colors.dart';
import 'package:ecommerce_app_level3/pages/shared/custom_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(33),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 67,
                ),
                MyTextfield(
                  textinputtype: TextInputType.emailAddress,
                  hinttext: 'Enter Your Email',
                  ispassword: false,
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextfield(
                  textinputtype: TextInputType.text,
                  hinttext: 'Enter Your Password',
                  ispassword: true,
                ),
                SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?",
                        style: TextStyle(fontSize: 18)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text('Sign In',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
