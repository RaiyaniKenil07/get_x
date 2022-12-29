import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThisController extends StatelessWidget {
  var control = Get.put(thiscontroller());
  ThisController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Workers"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                control.increment();
              },
              child: Text("Increment"),
            ),
            TextField(
              onChanged: (value) {
                control.increment();
              },
            )
          ],
        ),
      ),
    );
  }
}

class thiscontroller extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
    update(); // Will update the count variable on UI which used it
  }

  @override
  void onInit() {
    //called every time when the value of count variable changes
    // ever(count, (_) => print(count));

    //called every time when the value of any variable from the list changes
    // everAll([count], (_)=>print(count));

    //called only once when the variable value changes
    // once (count,(_)=>print(count));

    //called every time the user stops typing for 2 second
    // debounce(
    //   count,
    //   (_) => print(
    //       "When the user stop typing for 2 sec the value of count will be printed"),
    //   time: Duration(seconds: 2),
    // );

    //Ignore all changes within 3 second.
    //imagine that the user can earn coins by clicking on something,
    //if he clicked 300 times in the same minute,
    //he would have 300 coins, using interval,
    //and even then clicking 300 or a thousand times,
    //the maximum he would get in 1 minute would be 20 coins,
    //clicking 300 or 1 million times

    // interval(count, (_) => print("Ignore all changes"),
    //     time: Duration(seconds: 3));
    super.onInit();
  }
}
