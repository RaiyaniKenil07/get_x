import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Unique extends StatelessWidget {
  var mycontroller = Get.put(TheContoller());
  Unique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unique ID"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TheContoller>(
                id: "hiii", // jya id lakhelu hoy tya live change thay
                builder: (mycontroller) {
                  return Text(
                    "The value is ${mycontroller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              GetBuilder<TheContoller>(
                builder: (mycontroller) {
                  return Text(
                    "The value is ${mycontroller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    mycontroller.increment();
                  },
                  child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}

class TheContoller extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(["hiii"]);
  }
}
