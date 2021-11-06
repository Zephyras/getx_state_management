import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/getxservice/view/controller.dart';
import 'package:getx/feature/state/controller/count_controller_with_getx.dart';

import 'feature/Binding/binding.dart';
import 'feature/Binding/bindinglock.dart';
import 'feature/Home/view/home.dart';
import 'feature/getxservice/controller/getx_controller.dart';
import 'feature/getxservice/view/service.dart';
import 'feature/named/view/first.dart';
import 'feature/named/view/second.dart';
import 'feature/next/next.dart';
import 'feature/user/user.dart';

void main() {
  //initService();
  runApp(MyApp());
}
// 일반적인 서비스방법 메인에 호출후 permanent를  하면 화면이 보일때 선언한 컨트롤러가
// //이니셜라이즈가 되서 메모리에 올라간다.

//영구적으로 사용하겠다.
// void initService() {
//   Get.put(GetxControllerTest(), permanent: true);
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      // 기존방식
      // routes: {
      //   "/": (context) => Home(),
      //   "first": (context) => FirstNamedPage(),
      //   "second": (context) => SecondNamedPage(),
      // },

      //GetX 방식
      getPages: [
        GetPage(name: "/", page: () => Home(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next", page: () => NextPage(), transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => UserPage(),
            transition: Transition.zoom),
        //GETPAGE 안에서 binding:을 해 줄수 있다.
        GetPage(
            name: "/binding",
            page: () => BindingPage(),
            binding: BindingPageBinding()),
        GetPage(name: "/service", page: () => GetxServiceWidget()),
        GetPage(name: "/controller", page: () => GetxControllerWidget()),
      ],
    );
  }
}
