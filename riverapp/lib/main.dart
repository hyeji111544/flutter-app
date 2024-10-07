import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                child: InkWell(
                  onTap: () {
                    print("증가 클릭됨");
                  },
                  child: Text(
                    "증가",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
