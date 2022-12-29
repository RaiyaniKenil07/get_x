import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  await initServices();
}

Future<void> initServices() async {
  print("Starting service...");
  await Get.putAsync(() async => await Service());
  print("All Service started...");
}

class ThisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.putAsync<Service>(() async => await Service());

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Increment"),
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//this class is like a GetXController.
// It shares the same lifecycle(inInit(),onReady(),onClose)
// It Just notifies Getx Dependency INjection system,
//that this subclasds can not be removed from memory.
class Service extends GetxService {
  void incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt("counter") ?? 0) + 1;
    print("Pressed $counter times.");
    await prefs.setInt("counter", counter);
  }
}
