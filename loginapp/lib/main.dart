import 'package:flutter/material.dart';

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

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with WidgetsBindingObserver {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  bool isKeyboardVisible = false;

  @override
  void initState() {
    print("init");
    super.initState();
    WidgetsBinding.instance.addObserver(this); // 키보드 이벤트 감지
  }

  @override
  void dispose() {
    print("dispose");
    WidgetsBinding.instance.removeObserver(this);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    // 키보드가 나타날 때 스크롤을 최하단으로 조정
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    setState(() {
      isKeyboardVisible = bottomInset > 0; // 키보드가 나타나면 true, 사라지면 false
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // 로그인 아이템 위젯 추가
            _loginItem(context, username, password),
          ],
        ),
      ),
    );
  }

  Widget _loginItem(BuildContext context, TextEditingController username,
      TextEditingController password) {
    return Column(
      children: [
        Container(
          height: isKeyboardVisible ? 0 : 500,
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
