import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  //Controller는 싱글턴방식이기 때문에 하나만 존재하기 때문에
  //아래와 같은 static CountControllerWithGetX get to => Get.find();
  //으로 만들면 [원하는 컨트롤러.to.클래스안에 함수 접근] 으로 접근할수 잇다.
  //ex) CountControllerWithGetX.to.increas1();
  static CountControllerWithGetX get to => Get.find();
  RxInt count1 = 0.obs;
  int count = 0;
  void increas1() {
    count1++;
    //업데이트 안에 아이디를 넣어도된다
    // update(["first"]);
    //만약 복수로 움직여야할 경우 increase()안에 매개변수 id를 받아온다
    //update();
  }

  void increase2(String id) {
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

  void putNumber(int value) {
    count1(value);
    // count = value;
    // update();
  }
}
