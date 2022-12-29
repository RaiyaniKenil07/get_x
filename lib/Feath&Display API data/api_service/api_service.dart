import 'package:http/http.dart' as http;

import '../productmodule/models/product_model.dart';

class ApiService {
  static var clint = http.Client();

  static Future fetchProduct() async {
    http.Response response = await http.get(Uri.parse(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}
