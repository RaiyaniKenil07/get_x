import 'package:get/get.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeController>(() => MeController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

class MeController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}

class HomeController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
