import 'package:flutter/material.dart';
import 'package:loginapp/pages/home_page.dart';
import 'package:loginapp/pages/login_page.dart';
import 'package:loginapp/scroll_event.dart';

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
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 로그인 아이템 위젯 추가
            loginItem(context, username, password),
          ],
        ),
      ),
    );
  }
}



Widget loginItem(BuildContext context, TextEditingController username, TextEditingController password) {
  return Column(
    children: [
      Container(
        height: 500,
        color: Colors.yellow,
      ),
      TextFormField(
        controller: username,
        decoration: InputDecoration(
          hintText: "Username",
          prefixIcon: Icon(Icons.person),
        ),
      ),
      TextFormField(
        controller: password,
        obscureText: true, // 비밀번호 입력 시 안 보이게 처리
        decoration: InputDecoration(
          hintText: "Password",
          prefixIcon: Icon(Icons.password),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          String un = username.text;
          String pw = password.text;
          print(un);
          print(pw);

          Navigator.pushNamed(context, "/home");
        },
        child: Text("로그인"),
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          //Navigator.pushNamed(context, "/login"); // [A, B, A]
          //Navigator.pushReplacementNamed(context, "/login"); // [A, A]
          //Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => true); // [A]
          Navigator.pop(context); // [A]
        },
        child: Text("뒤로가기"),
      )),
    );
  }
}
