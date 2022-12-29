// *********************** DialogBox ***********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

// void main() {
//   runApp(DialogBox());
// }

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DialogBox"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Show dialog"),
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 30),
                      // middleText: "This is middle text",
                      // middleTextStyle: TextStyle(fontSize: 30),
                      backgroundColor: Colors.grey.withOpacity(0.50),
                      radius: 10,

                      // content: Row(
                      //   children: [
                      //     CircularProgressIndicator(),
                      //     SizedBox(
                      //       width: 16,
                      //     ),
                      //     Expanded(child: Text("data Loading")),
                      //   ],
                      // ),

                      textCancel: "Cancle",
                      cancelTextColor: Colors.white,

                      // onCancel: () {},
                      // cancel: Text(
                      //   "Cancels",
                      //   style: TextStyle(color: Colors.yellow),
                      // ),

                      // textConfirm: "Confirm",
                      // confirmTextColor: Colors.black,
                      // onConfirm: () {},
                      // // confirm: Text(
                      // //   "Confirm",
                      // //   style: TextStyle(color: Colors.yellow),
                      // // ),

                      // buttonColor: Colors.white,

                      // actions: [
                      //   ElevatedButton(
                      //       onPressed: () {
                      //         Get.back();
                      //       },
                      //       child: Text("Action-1")),
                      //   ElevatedButton(
                      //       onPressed: () {
                      //         Get.back();
                      //       },
                      //       child: Text("Action-2")),
                      // ],
                      // barrierDismissible: false,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
