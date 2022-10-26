import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Welcome', style: TextStyle(color: Colors.green, fontSize: 36),),
            Lottie.asset('assets/loading/congratulations.json', width: 200, height: 200, fit: BoxFit.fill),
          ] ,
        ),
      ),
    );
  }
}
