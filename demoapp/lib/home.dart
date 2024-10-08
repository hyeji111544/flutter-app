import 'package:demoapp/appbar.dart';
import 'package:demoapp/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: HomeBody(),
    );
  }
}
