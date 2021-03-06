import 'package:get/get.dart';
import 'package:getx/feature/getxservice/view/service.dart';

class GetxServiceTest extends GetxService {
  static GetxServiceTest get to => Get.find();
  RxInt count = 0.obs;

  @override
  void onInit() {
    Get.put<GetxServiceWidget>(GetxServiceWidget(), permanent: true);
    super.onInit();
  }

  void increase() {
    count++;
  }

  void clear() {
    count = 0.obs;
    // 밑에 삭제 부분 찾아보고 공부하기!
    //Get.deleteAll();
    //Get.delete();
    //Get.reload();
    //Get.reloadAll();
    //Get.reset();
    //this.onInit();
    //count = 0.obs;
  }
}
