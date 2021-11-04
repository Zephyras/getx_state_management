import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/normal/Second/view/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("다음페이지 이동"),
              onPressed: () {
                //GetX 라우트 이동
                Get.to(SecondPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
