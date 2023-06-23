// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app_level3/pages/details_screen.dart';
import 'package:ecommerce_app_level3/pages/home.dart';
import 'package:ecommerce_app_level3/pages/login.dart';
import 'package:ecommerce_app_level3/pages/register.dart';
import 'package:ecommerce_app_level3/provider/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
