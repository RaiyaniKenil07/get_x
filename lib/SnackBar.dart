import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SnackBar extends StatelessWidget {
  const SnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "Snakebar", "Notify Successfully",
                      // snackPosition: SnackPosition.BOTTOM,
                      // backgroundColor: Colors.blue.withOpacity(0.20)
                      // borderRadius: 5,
                      // margin: EdgeInsets.all(50),
                      // maxWidth: 80,
                      // animationDuration: Duration(seconds: 2),
                      // backgroundGradient: LinearGradient(
                      //     colors: ([
                      //   Colors.blueAccent,
                      //   Colors.orange,
                      //   Colors.yellow
                      // ])),
                      // borderColor: Colors.black,
                      // borderWidth: 0.1,
                      // boxShadows: [
                      //   BoxShadow(
                      //     color: Colors.black26.withOpacity(0.2),
                      //     offset: Offset(50, 20),
                      //     spreadRadius: 1,
                      //     blurRadius: 50,
                      //   ),
                      // ]
                      // isDismissible: true,
                      // dismissDirection: DismissDirection.horizontal,
                      // forwardAnimationCurve: Curves.bounceOut,
                      // reverseAnimationCurve: Curves.bounceInOut,
                      // duration: Duration(seconds: 5)
                      icon: Icon(
                        Icons.send_outlined,
                        color: Colors.black,
                      ),
                      // shouldIconPulse: false,
                      // mainButton: TextButton.icon(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.replay,
                      //       color: Colors.black,
                      //     ),
                      //     label: Text("Retry")),
                      // onTap: (nul) {
                      //   print("snack bar clicked");
                      // },
                      // overlayBlur: 4,
                      // overlayColor: Colors.black,
                      // padding: EdgeInsets.all(50),
                      // showProgressIndicator: true,
                      // progressIndicatorBackgroundColor: Colors.black,
                      // progressIndicatorValueColor:
                      //     AlwaysStoppedAnimation(Colors.white),
                      // snackbarStatus: (a) {
                      //   print(a);
                      // },
                      // userInputForm: Form(
                      //     child: Row(
                      //   children: [Expanded(child: TextField())],
                      // )),
                    );
                  },
                  child: Text("Snakebar messaege"))
            ],
          ),
        ),
      ),
    );
  }
}
