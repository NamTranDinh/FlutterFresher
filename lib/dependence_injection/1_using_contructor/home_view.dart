import 'package:demo_app/dependence_injection/1_using_contructor/app_info.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  var appInf = AppInfo();

  HomeView({super.key, required this.appInf});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(appInf.welcomeMss, style: const TextStyle(fontSize: 24, color: Colors.black),),
    );
  }
}
