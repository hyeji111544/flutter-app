import 'package:flutter/material.dart';
import 'package:roomapp/home/home_body.dart';
import 'package:roomapp/home/home_header.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}
