// ignore_for_file: prefer_const_constructors

import 'package:biodata_andriajitama/about.dart';
import 'package:biodata_andriajitama/details.dart';
import 'package:biodata_andriajitama/profile.dart';
import 'package:biodata_andriajitama/spalsh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Soho'),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/details': (context) => Details(),
        '/about': (context) => About(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
