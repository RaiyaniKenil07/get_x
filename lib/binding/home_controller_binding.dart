import 'package:get/get.dart';
import 'package:getx_snackbar/binding/all_controller_binding.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
