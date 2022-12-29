// *********************** Navigation ***********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'HomePage.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Go to Home"),
                onPressed: () async {
                  // Get.to(
                  //   HomePage(),
                  //   // fullscreenDialog: true,
                  //   transition: Transition.rightToLeft,
                  //   duration: Duration(milliseconds: 800),
                  //   curve: Curves.ease,
                  // );
                  // Go to home screen but no option to return to previous screen
                  // Get.off(HomePage());

                  // Go to home screen and cancle all previous screen/routes
                  // Get.offAll(HomePage());

                  // Go the next screen withg some data
                  // Get.to(HomePage(), arguments: "Data from Main");

                  var data = await Get.to(
                    HomePage(),
                    fullscreenDialog: false,
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 800),
                    curve: Curves.ease,
                  );
                  print("The Receved data is $data");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
