import 'package:flutter/material.dart';
import 'package:loginapp/pages/home_page.dart';
import 'package:loginapp/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      }
    );
  }
}
