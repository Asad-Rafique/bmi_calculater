
// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculater_app/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.dark()
      ),
    );
  }
}


