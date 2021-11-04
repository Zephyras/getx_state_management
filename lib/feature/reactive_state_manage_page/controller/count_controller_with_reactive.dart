import 'package:get/get.dart';

//enum 문
enum NUM { FIRST, SECOND }

class User {
  String? name;
  int? age;

  //초기갑을 받기위해 선언
  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  RxBool fbool = true.obs;

  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "꿈틀", age: 22).obs;
  RxList list = [].obs;
  void increase() {
    count++;
    _double; //_double++ 이 안된 null 값처리를 해야한다고 나옴.
    _double(424);

    nums(NUM.SECOND); // Enum문으로 값을 받아올때 이렇게 하면 업데이트가 된다.
    user(User());
    user.update((_user) {
      _user?.name = "개발하는 꿈틀";
    });

    // list.addAll(item);
    // list.add(item);
    list.addIf(user.value.name == "개발하는 남자", "okay");
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    //ever는 값이 변경될떄마다 호출된다.
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("한번만 호출"));

    //debouce는 검색하거나 사용자가 키를 입력하거나 업데이트를 하거나 서버 부화를 일으킬수 잇으므로 이벤트가 끝났을때 잠시 멈쳤을때 검색을 넣기위했을때 사용된다.
    debounce(count, (_) => print("마지막 변경에 한번만 호출"), time: Duration(seconds: 1));

    //1초마다 사용된다.
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"),
        time: Duration(seconds: 1));
    super.onInit();
  }
  // @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();
  // }
  // @override
  // // TODO: implement onDelete
  // InternalFinalCallback<void> get onDelete => super.onDelete;
}
