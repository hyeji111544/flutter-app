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
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: username,
            decoration: InputDecoration(
              hintText: "Username",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          //TextFormFilde 는 InputDecoration 을 사용
          TextFormField(
            controller: password,
            obscureText: true, //비밀번호 기재시 안보이게 해주는것
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.password),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // 1. 값 가져오기
                String un = username.text;
                String pw = password.text;
                print(un);
                print(pw);

                // 2. 통신하기

                // 3. 화면 이동 (A -> B)
                // [A, B] pushName
                // [B] pushReplaceName
                // [B] pushNamedAndRemoveUntil
                Navigator.pushNamed(context, "/home");
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
