import 'package:flutter/material.dart';
import 'home_view.dart';

class MainDi03 extends StatelessWidget {
  const MainDi03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeView(),
      ),
    );
  }
}
