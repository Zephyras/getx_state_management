import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/normal/view/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Nameed Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                //Get.offNamed("/second");
                Get.toNamed("/second");
              },
            ),
          ],
        ),
      ),
    );
  }
}
