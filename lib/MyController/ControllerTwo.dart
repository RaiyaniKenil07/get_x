import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_snackbar/MyController/Controller.dart';

class ControllerTwo extends StatelessWidget {
  var Controllerr = Get.put(MyControllerr());
  ControllerTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyControllerr>(
                initState: (data) => Controllerr.increment(),
                dispose: (_) => Controllerr.cleanUpTask(),
                builder: (_) {
                  return Center(
                      child: Text("The value is ${Controllerr.count}"));
                })
          ],
        ),
      ),
    );
  }
}

class MyControllerr extends GetxController {
  var count = 0;
  void increment() async {
    await Future.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print("Clean up task");
  }

  // void onInit() {
  //   print("Init Called");
  //   super.onInit();
  // }
  //
  // void onClose() {
  //   super.onClose();
  // }
}
