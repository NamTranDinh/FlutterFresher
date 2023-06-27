import 'dart:developer';

import 'package:demo_app/Provider/counter_provider.dart';
import 'package:demo_app/Provider/couter_page_1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterMain extends StatelessWidget {
  const CounterMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      // create: (BuildContext context) {
      //   return CounterProvider();
      // },
      builder: (BuildContext context, myCounter, Widget? child) {
        return MaterialApp(
          home: Scaffold(
            body: CounterPage1(myCounter: myCounter),
          ),
        );
      },
      // child: const MaterialApp(
      //   home: Scaffold(
      //     body: CounterPage1(),
      //   ),
      // ),
    );
  }
}
