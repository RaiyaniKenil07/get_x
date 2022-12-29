// *********************** Uppercase to lower case text ***********************
// null safe program is working
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoverScreen extends StatelessWidget {
  // var student = Student();
  var student = Student(name: "tom").obs;
  RxBool txtChange = false.obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Upper case to Lowercase text",
      home: Scaffold(
        appBar: AppBar(),
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name is ${txtChange.value ? student.value.name.toLowerCase() : student.value.name.toUpperCase()}",
                style: TextStyle(fontSize: 30),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // student.name.value = student.name.value.toUpperCase();
                    txtChange.value = !txtChange.value;
                  },
                  child: Text("Tap"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Student {
  // var name = "Tom".obs;
  var name;
  Student({this.name});
}
