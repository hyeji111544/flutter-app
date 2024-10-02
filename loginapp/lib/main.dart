import 'package:flutter/material.dart';
import 'package:loginapp/pages/home_page.dart';
import 'package:loginapp/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/login", // 첫번째 표시될 페이지
        routes: {
          "/login": (context) => LoginPage(),
          "/home": (context) => HomePage(),
        });
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(Icons.person),
            ),
          ),
          //TextFormFilde 는 InputDecoration 을 사용
          TextFormField(
            obscureText: true, //비밀번호 기재시 안보이게 해주는것
            decoration: InputDecoration(
                hintText: "Password",
              prefixIcon: Icon(Icons.password),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print("버튼 클릭됨");
              },
              child: Text("로그인")),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("HomePage")),
    );
  }
}
