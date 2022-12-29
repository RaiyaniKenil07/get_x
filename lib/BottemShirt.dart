// *********************** BottemShirt ***********************

// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  runApp(BottemSheet());
}

class BottemSheet extends StatelessWidget {
  const BottemSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottemShirt"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                child: Text("BottemShirt"),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text("Light theme"),
                            onTap: () => {
                              Get.changeTheme(
                                ThemeData.light(),
                              ),
                              Get.back(),
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text("Dark theme"),
                            onTap: () => {
                              Get.changeTheme(
                                ThemeData.dark(),
                              ),
                              Get.back(),
                            },
                          )
                        ],
                      ),
                    ),
                    barrierColor: Colors.black.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.8),
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.yellow,
                          style: BorderStyle.solid,
                          width: 5,
                        )),
                    enableDrag: true,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
