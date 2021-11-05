import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/dependencys/dependency_manage_page.dart';
import 'package:getx/feature/normal/First/first.dart';
import 'package:getx/feature/reactive_state_manage_page/reactive_state_manage_page.dart';
import 'package:getx/feature/simple_state_manage_page/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                //일반적인 라우트 이동
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => FirstPage(),
                //   ),
                // );
                //GetX 라우트 이동
                Get.to(FirstPage());
              },
            ),
            ElevatedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                //일반적인 네임드라우트 이동
                //Navigator.of(context).pushNamed("/first");

                //GetX 라우트 이동
                Get.toNamed("/first");
              },
            ),
            ElevatedButton(
              child: Text("Argurments 전달"),
              onPressed: () {
                //일반적인 네임드라우트 이동
                //Navigator.of(context).pushNamed("/first");

                //GetX 라우트 이동
                // Get.toNamed("/next", arguments: "꿈틀");
                //Get.toNamed("/next", arguments: {"name": "꿈틀", "age": "22"});
                Get.toNamed("/next",
                    arguments: User(
                      name: "개발하는꿈틀",
                      age: 33,
                    ));
              },
            ),
            ElevatedButton(
              child: Text("동적 url"),
              onPressed: () {
                //일반적인 네임드라우트 이동
                //Navigator.of(context).pushNamed("/first");

                //GetX 라우트 이동
                // Get.toNamed("/next", arguments: "꿈틀");
                //Get.toNamed("/next", arguments: {"name": "꿈틀", "age": "22"});
                // Get.toNamed("/next",
                //     arguments: User(
                //       name: "개발하는꿈틀",
                //       age: 33,
                //     ));
                Get.toNamed("/user/28357?name=개발하는꿈틀&age=32");
              },
            ),
            ElevatedButton(
              child: Text("단순상태관리"),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text("반응형상태관리"),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text("의존성 주입"),
              onPressed: () {
                Get.to(DependencyManagePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}
