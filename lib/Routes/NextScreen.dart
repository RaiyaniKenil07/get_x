import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child:
            // Text(
            //   "This is Next screen",
            //   style: TextStyle(color: Colors.redAccent, fontSize: 30),
            // ),
            Text(
          "${Get.parameters["anyValue"]}",
          style: TextStyle(color: Colors.redAccent, fontSize: 30),
        ),
      ),
    );
  }
}
