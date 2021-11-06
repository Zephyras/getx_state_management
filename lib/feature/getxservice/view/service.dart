import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/getxservice/controller/getx_service.dart';

class GetxServiceWidget extends GetView<GetxServiceTest> {
  const GetxServiceWidget({Key? key}) : super(key: key);

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
              child: Text('Get Service Increase'),
              onPressed: () {
                controller.increase();
              },
            ),
            ElevatedButton(
              child: Text('Get Service clear'),
              onPressed: () {
                print('Get.reset()는 Get에 들어가 있는 모든 메모리에 데이터 삭제');
                controller.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
