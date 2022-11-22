import 'package:demo_app/get/routes_manager/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: style,
              onPressed: () {
                Get.toNamed(Routes.instance.page3);
              },
              child: const Text('next page'),
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                Get.back();
              },
              child: const Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}
