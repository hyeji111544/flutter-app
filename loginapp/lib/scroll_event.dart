import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/main.dart';

class ScrollEventPage extends StatefulWidget {
  ScrollEventPage({Key? key}) : super(key: key);

  @override
  _ScrollEventPageState createState() => _ScrollEventPageState();
}

class _ScrollEventPageState extends State<ScrollEventPage> with WidgetsBindingObserver {
  late ScrollController _controller;
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _controller.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    if (bottomInset > 0) {
      // 키보드가 나타날 때 스크롤 위치 조정
      WidgetsBinding.instance.addPostFrameCallback((_) {
        double targetOffset = _controller.position.maxScrollExtent;
        _controller.animateTo(
          targetOffset, // 정확한 위치로 한 번만 스크롤
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChildScrollScreen"),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            loginItem(context, username, password),
          ],
        ),
      ),
    );
  }
}
