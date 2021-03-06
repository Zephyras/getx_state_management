import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/Home/view/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Nameed Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("뒤로이동"),
              onPressed: () {
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text("홈 이동"),
              onPressed: () {
                Get.offAllNamed("/");
                //Get.toNamed("/home");
              },
            ),
          ],
        ),
      ),
    );
  }
}
