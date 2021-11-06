import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/getxservice/controller/getx_controller.dart';

class GetxControllerWidget extends GetView<GetxControllerTest> {
  const GetxControllerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.count.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increase();
              },
              child: Text('Get Controller Increase'),
            ),
          ],
        ),
      ),
    );
  }
}
