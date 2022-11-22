import 'package:demo_app/get/routes_manager/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainGet extends StatelessWidget {
  const MainGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // create routes
      getPages: Routes.instance.routes,
      // init routes
      initialRoute: Routes.instance.page1,
      debugShowCheckedModeBanner: false,

    );
  }
}
