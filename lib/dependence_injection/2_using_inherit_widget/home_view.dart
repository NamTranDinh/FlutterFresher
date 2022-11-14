import 'package:demo_app/dependence_injection/2_using_inherit_widget/inherited_injection.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(InheritedInjection.of(context).app_info.welcomeMss, style: const TextStyle(fontSize: 24, color: Colors.black),),
    );
  }
}
