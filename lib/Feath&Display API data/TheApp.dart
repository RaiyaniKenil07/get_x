import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_snackbar/Feath&Display%20API%20data/productmodule/views/product_list_view.dart';

import 'commonmodules/AppColor.dart';

class TheApp extends StatelessWidget {
  const TheApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,
      ),
      home: ProductListView(),
    );
  }
}
