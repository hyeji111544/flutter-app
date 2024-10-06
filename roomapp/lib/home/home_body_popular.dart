import 'package:flutter/material.dart';
import 'package:roomapp/home/home_body_popular_item.dart';
import 'package:roomapp/size.dart';

class HomeBodyPopular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: gap_m),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPopularTitle(),
      ],
    ),);
  }
  Widget _buildPopularTitle(){return SizedBox();}
  Widget _buildPopularList(){

    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        const SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );

  }
}
