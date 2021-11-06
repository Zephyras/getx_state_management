import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/state/controller/count_controller_with_getx.dart';

//GetView<원하는컨트롤러를 넣어주면> controller로 바로 접근할수 있다.
class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //GetBuilder<CountControllerWithGetX> GetBuilder안에 컨트롤러를 사용하기 떄문에 현클래스와 컨트롤 충돌이 없다.
            // GetBuilder<CountControllerWithGetX>(
            //   builder: (_) {
            //     return Text(
            //       _.count.toString(),
            //       style: TextStyle(fontSize: 30),
            //     );
            //   },
            // ),

            // OBX를 사용하면 GetBuilder<CountControllerWithGetX> 를 더 간편하게 만들수 잇다.
            // Text위젯에 안에 컨트롤러로 바로 데이터 값을 넣어서 사용함.
            Obx(
              () => Text(
                controller.count1.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  //Get.find<CountControllerWithGetX>().increas1();
                  //아래처럼 너무 접근하기 귀찮 다른방법이 있다.
                  //Get.find<CountControllerWithGetX>().increas1();
                  CountControllerWithGetX.to
                      .increas1(); // to를 만들어줘서 쉽게 접을 할수 있게한다. 가독성도 좋다.
                },
                child: Text(''))
          ],
        ),
      ),
    );
  }
}
