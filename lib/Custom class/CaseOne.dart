// *********************** Uppercase to lower case text ***********************
// without null sefety but program is not working
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaseOne extends StatelessWidget {
  // var student = Student();
  var student = Student(name: "tom").obs;

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
                "Name is ${student.value.name}",
                style: TextStyle(fontSize: 30),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // student.name.value = student.name.value.toUpperCase();
                    student.update((student) {
                      student!.name = student.name.toString().toUpperCase();
                    });
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
