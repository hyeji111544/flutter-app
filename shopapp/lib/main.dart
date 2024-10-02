import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopPage(),
    );
  }
}

//StatelessWidget 는 상태 관리를 하지 않기 때문에 StatefulWidget
class ShopPage extends StatefulWidget {
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<String> imageList = [
    "https://picsum.photos/id/100/200/200",
    "https://picsum.photos/id/101/200/200"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("shopPage 그림 그려짐");
    return Scaffold(
      appBar: AppBar(title: Text("쇼핑카트")),
      body: Column(
        children: [
          // 1. 이미지
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.network(
              imageList[selectedIndex],
              fit: BoxFit.cover,
            ),
          ),
          // 2. 버튼 2개
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                    onPressed: () {
                      selectedIndex = 0;
                      print("selectedIndex : $selectedIndex");
                      setState(() {});
                    },
                    icon: Icon(Icons.account_circle_sharp)),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                    onPressed: () {
                      selectedIndex = 1;
                      print("selectedIndex : $selectedIndex");
                      setState(() {});
                    },
                    icon: Icon(Icons.account_balance_wallet)),
              ),
            ],
          ),

          // 3. 동그라미 두개
          _circle(),
          /*
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection:
                  Axis.horizontal, // hello 글자가 생기고 가로로 스크롤 할 수 있게됨.
              children: [for (int i = 0; i < 20; i++) Text("Hello $i")],
            ),
          ),
           */

          _filed(),
        ],
      ),
    );
  }

  Stack _filed() {
    return Stack(
      children: [
        TextFormField(
          maxLines: 3,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.person),
            enabledBorder: OutlineInputBorder(),
          ),
        ),
        Positioned(left: 200, top: 50, child: Icon(Icons.person)),
      ],
    );
  }

  Container _circle() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Align(
        alignment: Alignment(1.0, 0.0), // -1.0~1.0(가로), -1.0~1.0(세로)
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(75),
          ),
        ),
      ),
    );
  }
}
