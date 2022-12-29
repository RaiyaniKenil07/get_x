import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Next Screen"),
                onPressed: () {
                  // Get.toNamed("/NextScreen");
                  Get.toNamed("/NextScreen/12345");
                },
              ),
              ElevatedButton(
                child: Text("Back to Navigation"),
                onPressed: () {
                  Get.back();
                  // Sand data to previous screen must use result as name
                  //result use pass the data
                },
              ),
              // Text(
              //     "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters["content"]}"),
            ],
          ),
        ),
      ),
    );
  }
}
