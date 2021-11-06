import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/state/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  //WithGetX가 생성될때 바로 사용될수 있도록 불러올수도 있다. (클래스 생서자에 const가 있으면 오류 값이 수정되므로)
  CountControllerWithGetX _controllerWithGetx =
      Get.put(CountControllerWithGetX());

  //두개이상으로 따로 움직이게 할 경우 버튼 위젯에 매개변수에도 id를 넣어서 구분하게 한다.
  Widget _button(String id) {
    return ElevatedButton(
        onPressed: () {
          //Get.find<CountControllerWithGetX>().increase();
          _controllerWithGetx.count = _controllerWithGetx.count;

          _controllerWithGetx.increase2(id);
        },
        child: Text("+", style: TextStyle(fontSize: 30)));
  }

  @override
  Widget build(BuildContext context) {
    //컨테스트 빌드에 선언해도된다.
    //Get.put(CountControllerWithGetX());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GET_X", style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetX>(
            id: "first", //GetX 장점으로 id를 부여해서 따로 관리할수 있다. with_getx update 안에 배열로 선언하기
            builder: (controller) {
              return Text("${controller.count}",
                  style: TextStyle(fontSize: 50));
            },
          ),
          _button("first"),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}",
                  style: TextStyle(fontSize: 50));
            },
          ),
          //_button(),

          //복수로 할경우 id값을 넣어준다. 프로바이더에서는 이 기능이 불가능하다.
          _button("second"),
        ],
      ),
    );
  }
}
