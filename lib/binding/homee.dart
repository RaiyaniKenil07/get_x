import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_snackbar/binding/all_controller_binding.dart';

class Homee extends StatelessWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("The Value is ${Get.find<HomeController>().count}"),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<HomeController>().increment();
                },
                child: Text("Increment")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
