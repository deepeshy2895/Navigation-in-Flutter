import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Get.to(() => SecondPage());
                },
                child: Text("Go to First Page ")),
          ],
        ),
      ),
    );
  }
}
