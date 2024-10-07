import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고 데이터 (데이터)
class CountModer {
  int count = 1;
}

// 창고 (비지니스 로직관리)
class CountStore extends StateNotifier<CountModer> {
  // CountModer 이걸 int 로 바꾸는걸 해바
  CountStore(super.state);

  // 값 변경을 위해 new 를 샐해서 ㅜㅝ야ㅏ
  void increase() {
    CountModer model = super.state;
    model.count++;
    // super.state = CountModer(model.count);
  }

  void decrease() {
    CountModer model = super.state;
    model.count--;
  }
}

// 창고 관리자
final countProvider = StateNotifierProvider<CountStore, CountModer>((ref) {
  CountModer moder = CountModer();
  return CountStore(moder);
});
