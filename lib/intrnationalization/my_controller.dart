import 'dart:ui';

import 'package:get/get.dart';

class InterController extends GetxController {
  void changeLanguage(var raiyani1, raiyani2) {
    var locale = Locale(raiyani1, raiyani2);
    Get.updateLocale(locale);
  }
}
