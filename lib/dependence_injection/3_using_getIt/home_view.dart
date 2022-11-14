import 'package:demo_app/dependence_injection/3_using_getIt/app_info.dart';
import 'package:flutter/material.dart';
import 'injection_appInfo.dart';

class HomeView extends StatelessWidget {
  var getAppInf = getIt<AppInfo>();
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(getAppInf.welcomeMss, style: const TextStyle(fontSize: 24, color: Colors.black),),
    );
  }
}
