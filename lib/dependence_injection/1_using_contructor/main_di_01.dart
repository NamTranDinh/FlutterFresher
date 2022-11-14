import 'package:demo_app/dependence_injection/1_using_contructor/app_info.dart';
import 'package:demo_app/dependence_injection/1_using_contructor/home_view.dart';
import 'package:flutter/material.dart';

class MainDi01 extends StatelessWidget {
  const MainDi01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeView(appInf: AppInfo(),),
      ),
    );
  }
}
