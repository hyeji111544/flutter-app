import 'package:demoapp/home.dart';
import 'package:demoapp/splash.dart';
import 'package:demoapp/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
      theme: theme(),
    );
  }
}
