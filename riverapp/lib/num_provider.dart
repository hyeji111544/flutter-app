import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고 데이터 (데이터)
class BunModel {
  int bun;
  BunModel(this.bun);
}

// 창고 (비지니스 로직관리)
class BunStore extends StateNotifier<BunModel> {
  BunStore(super.state);

  void increase() {
    BunModel model = super.state;
    model.bun++;
    super.state = BunModel(model.bun);
  }

  void decrease() {
    BunModel model = super.state;
    model.bun--;
    super.state = BunModel(model.bun);
  }
}

// 창고 관리자 (창고 관리)
final bunProvider = StateNotifierProvider<BunStore, BunModel>((ref) {
  BunModel model = BunModel(1);
  return BunStore(model);
});
