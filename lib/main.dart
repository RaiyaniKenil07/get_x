import 'package:getx_snackbar/Custom%20class/CaseOne.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_snackbar/Navigation/Navigation.dart';
import 'package:getx_snackbar/Routes/MainPage.dart';
import 'package:getx_snackbar/SnackBar.dart';
import 'package:getx_snackbar/unique_id/unique_id.dart';
import 'package:getx_snackbar/workers/workers.dart';
import 'BottemShirt.dart';
import 'Custom class/CaseTwo.dart';
import 'Dialog_box.dart';
import 'Feath&Display API data/TheApp.dart';
import 'MyController/Controller.dart';
import 'MyController/ControllerTwo.dart';
import 'ReactiveStateManager/Obx.dart';
import 'binding/binding.dart';
import 'binding/myapp_controller_binding.dart';
import 'dependency_injection/injection.dart';
import 'getx_service/service.dart';
import 'intrnationalization/intrnationalization.dart';

// void main() {
//   MyAppControllerBinding().dependencies();
//   runApp(MyAppli());
// }
void main() {
  runApp(DialogBox());
}

// this routs only for bottemshirt,dialogbox and snackbar just change page name

// void main() {
//   runApp(GetMaterialApp(
//     routes: {
//       "/": (context) => SnackBar(),
//     },
//   ));
// }
