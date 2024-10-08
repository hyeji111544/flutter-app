import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final TabController? tabController;

  const TabBarWidget({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.blue,
      tabs: [
        Container(
          width: 120,
          child: Tab(
            text: '최신 업데이트',
          ),
        ),
        Container(
          width: 120,
          child: Tab(
            text: '인기',
          ),
        ),
        Container(
          width: 120,
          child: Tab(
            text: '주제별',
          ),
        ),
      ],
    );
  }
}
