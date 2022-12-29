import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_snackbar/Routes/Home.dart';
import 'package:getx_snackbar/Routes/NextScreen.dart';
import 'package:getx_snackbar/Routes/unknown_routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page: () => MainPage()),
        GetPage(name: "/Home", page: () => Home()),
        // GetPage(
        //     name: "/NextScreen",
        //     page: () => NextScreen(),
        //     transition: Transition.rightToLeft),
        GetPage(
            name: "/NextScreen/:anyValue",
            page: () => NextScreen(),
            transition: Transition.rightToLeft),
      ],
      // unknownRoute: GetPage(name: "/notfound", page: () => Unknown()),
      home: Scaffold(
        appBar: AppBar(title: Text("Navigation")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: Text('Go to Home'),
                onPressed: () {
                  Get.toNamed("/Home");

                  // Go to home screen but no option to return to previous screen
                  // Get.offNamed("/Home");

                  // Go to home screen and cancle all previous screen/routes
                  // Get.offAllNamed("/Home");

                  // Dynamic URL link
                  // Get.toNamed(
                  //   "/HomePage?channel=Ripples Code&content=Flutter GetX",
                  // );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
