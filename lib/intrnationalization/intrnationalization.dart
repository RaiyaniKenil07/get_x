import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_snackbar/intrnationalization/my_controller.dart';

class Inter extends StatelessWidget {
  var mycontroller = Get.put(
    InterController(),
  );
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "Us"),
      title: "Internationalization",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "hello".tr,
                style: TextStyle(fontSize: 25, color: Colors.purple),
              ),
              ElevatedButton(
                onPressed: () {
                  InterController().changeLanguage("hi", "IN");
                },
                child: Text("Hindi"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  InterController().changeLanguage("fr", "FR");
                },
                child: Text("Franch"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  InterController().changeLanguage("en", "US");
                },
                child: Text("English"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "hello": "Hello",
        },
        "hi_In": {
          "hello": "नमस्ते",
        },
        "fr_FR": {
          "hello": "Bonjour",
        }
      };
}
