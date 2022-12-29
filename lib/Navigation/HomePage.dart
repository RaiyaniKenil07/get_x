// *********************** HOMEPAGE ***********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text("Back to Navigation"),
                onPressed: () {
                  // Sand data to previous screen must use result as name
                  //result use pass the data
                  Get.back(result: " : from the Home Screen");
                },
              ),
              // Text("${Get.argument}"),
            ],
          ),
        ),
      ),
    );
  }
}
