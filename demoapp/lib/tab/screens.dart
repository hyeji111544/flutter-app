import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      child: Center(
        child: Text(
          '내서재',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent[100],
      child: Center(
        child: Text(
          '검색',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent[100],
      child: Center(
        child: Text(
          '설정',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
