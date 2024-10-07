import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/num_notify_provider.dart';
import 'package:riverapp/num_provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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
  @override
  Widget build(BuildContext context) {
    print("HomePage");
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Top(),
          ),
          Expanded(
            child: Bottom(),
          ),
        ],
      ),
    );
  }
}

class Bottom extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Bottom");

    //NumStore store = ref.read(numProvider);
    CountStore countStore = ref.read(countProvider.notifier);
    //기존 데이터가 없으면 변경을 못함. 지금 기존에 데이터를 그대로 변경중이라 숫자 변경이 안된다.
    return Center(
      child: Container(
        child: InkWell(
          onTap: () {
            print("증가 클릭됨");
            countStore.increase();
          },
          child: Text(
            "증가",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

//riverpod 사용 할 때만 ConsumerWidget 사용한다.
class Top extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Top");
    //NumStore store = ref.read(numProvider); // 프로바이더의 익명함수가 실행됨 (창고 접근)
    CountModer moder = ref.watch(countProvider); // 프로바이더의 익명 함수가 실행돰(모델 접근)
    /*
    int num = ref
        .read(numProvider); //ref.read(numProvider) -> provider의 익명함수가 실행됨! (문법)
    //싱글톤으로 관리한다. 여러번 실행되도 한번만 뜬다.
    int num2 = ref
        .read(numProvider); //ref.read(numProvider) -> provider의 익명함수가 실행됨! (문법)
     */

    return Center(
      child: Container(
        child: Text("${moder.count}", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
