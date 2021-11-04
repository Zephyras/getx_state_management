import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'feature/Home/view/home.dart';
import 'feature/named/First/first.dart';
import 'feature/named/Second/view/second.dart';
import 'feature/next/next.dart';
import 'feature/user/user.dart';

void main() {
  runApp(MyApp());
}

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
      ],
    );
  }
}
