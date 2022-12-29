import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

class DependencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //My Controller instance will be created even if it is not used
    //tag will be used to find the instance with tag name
    //Controller disposed when it is not used but if permanent is
    //true the instance will be alive throughout the app
    // var injection = Get.put(Injection(), permanent: true);

    //Instance will be created when it is used
    //It is Similar to "permanent", the difference is that the instance
    //is discarded when is not being used,
    //but when it's use is needed again, Get will recreate the instance
    // Get.lazyPut(() => Injection(), tag: 'instance', fenix: true);

    Get.putAsync<Injection>(() async => await Injection());

    // Here permanent will be true by default and isSingleton is false

    // Get.create<Injection>(() => Injection());

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dependency Injection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Click Me"),
                onPressed: () {
                  //Instance will be created with tag
                  // Get.find<LgController>(tag: 'instance1');
                  // Get.find<Injection>();
                  Get.find<Injection>().incrementCounter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Injection extends GetxController {
  void incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt("counter") ?? 0) + 1;
    print("Pressed $counter times.");
    await prefs.setInt("counter", counter);
  }
}
