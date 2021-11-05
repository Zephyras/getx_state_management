import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        child: Text(""),
        onPressed: () {
          //페이지에 접근후 인스턴스가 메모리에 안올라가 있는상태에서 체스쳐를 할경우
          //메모리 인스턴스화를 불러온다 그리고 put경우는 하번만 호출되지만 create는 계속 호출할 수 잇다.
          print(Get.find<DependencyController>().hashCode);
          Get.find<DependencyController>().increas();
        },
      ),
    );
  }
}
