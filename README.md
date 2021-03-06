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

# GetX 상태관리 ##

* GetMaterial() 처음 GetX Material기능을 사용하기 위한 선언
<pre>
<code>
GetMaterial()
</code>
</pre>

## Router (라우터)
* 라우터를 쓰기위한 선언
<pre>
<code>
initialRoute: "/",
</code>
</pre>


1.일반적인 화면전환
<pre>
<code>
// 기존방식
routes: {
  "/": (context) => Home(),
  "first": (context) => FirstNamedPage(),
  "second": (context) => SecondNamedPage(),
},
</code>
</pre>



2.GetX를 사용하여 화면전환
<pre>
<code>
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
</code>
</pre>
            
>Get.to
>Get.Name
