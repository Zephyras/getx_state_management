import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  int count = 0;
  void increase(String id) {
    count++;
    //업데이트 안에 아이디를 넣어도된다
    // update(["first"]);
    //만약 복수로 움직여야할 경우 increase()안에 매개변수 id를 받아온다
    update([id]);
  }

  // @override
  // void onInit() {
  //   //반은형이 아닌 일반적인 상태에서는 ever를 사용할수 없다
  //   ever(count, (_) => print('ddd'));
  //   super.onInit();
  // }
}
