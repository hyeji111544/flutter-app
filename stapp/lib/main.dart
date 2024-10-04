import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 1. 상태
  int num = 1;

  // 2. 행위
  void add() {
    num++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("나그려짐");
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Top(num: num),
            ),
            Expanded(
              child: Bottom(add: add),
            ),
          ],
        ),
      ),
    );
  }
}

class Bottom extends StatelessWidget {
  final add;

  Bottom({required this.add});

  @override
  Widget build(BuildContext context) {
    print("Bottom 그려짐");
    return Container(
      color: Colors.blue,
      child: Align(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {
            add();
          },
          child: Text(
            "증가",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class Top extends StatelessWidget {
  const Top({
    super.key,
    required this.num,
  });

  final int num;

  @override
  Widget build(BuildContext context) {
    print("Top 그려짐");
    return Container(
      color: Colors.red,
      child: Align(
        child: Text(
          "${num}",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("Header 그려짐");
    return Container(
      color: Colors.green,
      height: 200,
    );
  }
}
