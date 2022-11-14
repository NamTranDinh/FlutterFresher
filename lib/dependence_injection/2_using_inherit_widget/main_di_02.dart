import 'package:demo_app/dependence_injection/2_using_inherit_widget/inherited_injection.dart';
import 'package:flutter/material.dart';
import 'home_view.dart';
class MainDi02 extends StatelessWidget {
  const MainDi02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InheritedInjection(
      child: MaterialApp(
        home: Scaffold(
          body: HomeView(),
        ),
      ),
    );
  }
}
