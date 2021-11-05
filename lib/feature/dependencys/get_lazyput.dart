import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/dependencys/dependency_controller.dart';
import 'dependency_manage_page.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        child: Text(""),
        onPressed: () {
          //빌드가 된상태지만 버튼을 누루기 전이면 대기 상태이며
          //버튼을 눌럿을경우 DependecyController에 대해 접근할때에 메모리가 올라간다.
          Get.find<DependencyController>().increas();
        },
      ),
    );
  }
}
