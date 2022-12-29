import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_snackbar/Feath&Display%20API%20data/productmodule/controller/product_controller.dart';
import '../../commonmodules/AppColor.dart';
import '../../commonmodules/AppString.dart';

class ProductListView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: Obx(
        () {
          if (productController.isLoading.value)
            return Center(
              child: CircularProgressIndicator(),
            );
          else
            return ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: Image.network(
                            productController.productList[index].imageLink,
                            height: 150,
                            width: 150,
                            fit: BoxFit.fill,
                            color: AppColor.purpleColor,
                            colorBlendMode: BlendMode.color,
                          ),
                        ),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              productController.productList[index].name,
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              productController.productList[index].brand,
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.grey),
                            ),
                            Text(
                              productController.productList[index].category,
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.grey),
                            )
                          ],
                        ))
                      ],
                    ),
                    Container(
                      color: AppColor.grey200,
                      height: 2,
                    ),
                  ],
                );
              },
            );
        },
      ),
    );
  }
}
