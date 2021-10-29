// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobfinder/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      // ignore: prefer_const_constructors
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff43b1b7),
          accentColor: Color(0xfffed408),
        ),
        title: 'Job Finder',
        home: HomePage());
  }
}
