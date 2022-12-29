import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends StatelessWidget {
  var mycontroller = Get.put(MyController());
  Controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyController>(
                // init: MyController(),// aaya lakiyu hoy etle <MyCopntroller> aa na lakhvu pde
                builder: (_) {
              return Center(
                child: Text(
                  "The value is ${mycontroller.count}",
                  style: TextStyle(fontSize: 25),
                ),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  mycontroller.increment();
                },
                child: Text("Tap"))
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
    update();
  }
}
