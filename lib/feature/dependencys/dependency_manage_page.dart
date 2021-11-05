import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/feature/dependencys/get_lazyput.dart';

import 'dependency_controller.dart';
import 'get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(GetPut(), binding: BindingsBuilder(
                    () {
                      //바이딩 시킨후 확인하면 DependencyController 이니셜라이즈 되었으며
                      //GETX에서는 바인딩된 라우터를 컨트롤러를 생성하고 삭제하는거를 알아서해준다
                      //인스턴스를 버튼으로 적용할경우 생성이되고 뒤로 가기를 할 경우 클로즈하고 메모리에서 삭제를 해준다
                      //인스턴스가 메모리안에 누적이되는거를 인스턴스화 표현한다. 메모리가 인스턴스에 쌓이게되면 기기가 느려진다.
                      //그래서 삭제를 해주므로 최적화에 좋다.
                      Get.put(DependencyController());
                    },
                  ));
                },
                child: Text("Getput")),
            ElevatedButton(
                onPressed: () {
                  //GetLazyPut 에 접근할때는 메모리에 인스턴스화가 아직 안되어 있는상태이다.
                  //페이자가 열리 접근후 대기상태가 된다. get_lazyput 확인하라.
                  Get.to(
                    GetLazyPut(),
                    binding: BindingsBuilder(() {
                      Get.lazyPut<DependencyController>(
                          () => DependencyController());
                    }),
                  );
                },
                child: Text("Get.lazyPut")),
            ElevatedButton(
                onPressed: () {
                  //페이지에 접근하면 멈추었다가 5초후 작동된다. 보통 Put()으로 서버에 올린후 처리하는편이다.
                  Get.to(
                    GetPut(),
                    binding: BindingsBuilder(() {
                      Get.putAsync<DependencyController>(() async {
                        await Future.delayed(Duration(seconds: 5));
                        return DependencyController();
                      });
                    }),
                  );
                },
                child: Text("Get.putAsync")),
            // ElevatedButton(
            //     onPressed: () {
            //       // 쓸일이 거의 없는 기능이다함.
            //       Get.to(
            //         GetPut(),
            //         binding: BindingsBuilder(() {
            //           Get.create<DependencyController>(
            //               () => DependencyController());
            //         }),
            //       );
            //     },
            //     child: Text("Get.create")),
          ],
        ),
      ),
    );
  }
}
