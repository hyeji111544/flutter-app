import 'package:flutter/material.dart';
import 'package:profileapp/theme.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ProfileDrawer()
      // AppBar()
      body: Column(
        children: [
          // header()
          // countInfo()
          // Buttons()
          // Tab()
        ],
      ),
    );
  }
}

