import 'package:flutter/material.dart';
import 'package:roomapp/home/home_body_banner.dart';
import 'package:roomapp/home/home_body_popular.dart';
import 'package:roomapp/size.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
