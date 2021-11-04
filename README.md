# getx

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## GetX 상태관리 ##
GetMaterial()



#Router (라우터)
initialRoute: "/",
라우터를 쓰기위한 선언

1.일반적인 화면전환
// 기존방식
     routes: {
       "/": (context) => Home(),
       "first": (context) => FirstNamedPage(),
       "second": (context) => SecondNamedPage(),
     },


2.GetX를 사용하여 화면전환
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
Get.to
Get.Name
