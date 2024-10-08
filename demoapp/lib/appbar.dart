import 'package:demoapp/size.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.headlineLarge?.copyWith(
          fontSize: 28, // 타이틀 크기 조정
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );

    return AppBar(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.png",
            width: 40,
            height: 40,
          ),
          SizedBox(width: gap_s),
          Text(
            'BookBox',
            style: titleStyle,
          ),
          Spacer(), // 오른쪽으로 밀기 위해 사용
          IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            onPressed: () {
              // 알림 클릭 시 행동
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
