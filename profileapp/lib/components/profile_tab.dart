import 'package:flutter/material.dart';
class ProfileTab extends StatefulWidget {
  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        _buildTabView(),
      ],
    );
  }
}

Widget _buildTabBar(){return SizedBox();}
Widget _buildTabView(){return SizedBox();}