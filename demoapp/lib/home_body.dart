import 'package:demoapp/tab/screens.dart';
import 'package:demoapp/tab/tab_bar.dart';
import 'package:demoapp/tab/tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentTab = 0;

  // 탭바꺼
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentTab,
        children: [
          Column(
            children: [
              _buildTabBar(),
              Expanded(child: _buildTabBarView()),
            ],
          ),
          Screen2(), // 스크린 2
          Screen3(),
          Screen4(), // 스크린 3
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(CupertinoIcons.house),
          ),
          BottomNavigationBarItem(
            label: '내서재',
            icon: Icon(CupertinoIcons.book),
          ),
          BottomNavigationBarItem(
            label: '검색',
            icon: Icon(CupertinoIcons.search),
          ),
          BottomNavigationBarItem(
            label: '설정',
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentTab = index; // 간단하게 인덱스를 설정
          });
        },
        currentIndex: _currentTab,
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBarWidget(tabController: _tabController); // TabBarWidget 사용
  }

  Widget _buildTabBarView() {
    return TabBarViewWidget(
        tabController: _tabController); // TabBarViewWidget 사용
  }
}
