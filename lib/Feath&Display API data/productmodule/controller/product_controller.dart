import 'package:get/get.dart';
import 'package:getx_snackbar/Feath&Display%20API%20data/api_service/api_service.dart';

import '../models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var product = await ApiService.fetchProduct();
      if (product != null) {
        productList.assignAll(product);
      }
    } finally {
      isLoading(false);
    }
  }
}
