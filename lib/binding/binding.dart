import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_snackbar/Routes/Home.dart';

import 'all_controller_binding.dart';
import 'home_controller_binding.dart';
import 'homee.dart';

class MyAppli extends StatelessWidget {
  const MyAppli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(),

      // if binding applied at route level
      // getPages: [
      //   GetPage(
      //     name: "/Homee",
      //     page: () => Homee(),
      //     binding: HomeControllerBinding(),
      //   )
      // ],
      //
      getPages: [
        GetPage(
          name: "/Homee",
          page: () => Homee(),
          binding: BindingsBuilder(() => Get.lazyPut<HomeControllerBinding>(
              () => HomeControllerBinding())),
        )
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("Binding"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("The Value is ${Get.find<MeController>().count}")),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MeController>().increment();
                  },
                  child: Text("Increment")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(Homee(), transition: Transition.rightToLeft);

                  //for route
                  // Get.toNamed(
                  //   "/Homee",
                  // );

                  Get.to(Homee(), binding: HomeControllerBinding());
                },
                child: Text("Home"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Smart Management
//GetX provider SmartManagement that lets us configure how dependencies
// behave in terms of memory management.
// GetMaterialApp{
// smartManagement: SmartManagement.full // or .keepFactory or .onlyBuilder
// }
// Full Mode
// =============
// Everything gets disposed as soon as the route removed from navigation stack,
//     unless declared permanent.

// SmartManagement.keepFactory
// ================================
// Just like SmartManagement.full, it will remove it's dependencies when '
// 'it's not being used anymore. However, it will keep their factory,
// which means it will recreate the dependency if you need that instance again.

// SmartManagement.onlyBuilders
// ==========================================
//  with this option, only controller started in init: or loaded into a Binding
//  with Get.lazyPut() will disposed.
//
// If you use Get.putAsync () or other approach,
//  SmartManagement will not have permission to exclude this dependency.
