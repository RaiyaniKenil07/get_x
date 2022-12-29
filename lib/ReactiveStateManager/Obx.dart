import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxPage extends StatelessWidget {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Manager"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("Count value is $count")),
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: Text("Tap to incriment"))
            ],
          ),
        ),
      ),
    );
  }
}
