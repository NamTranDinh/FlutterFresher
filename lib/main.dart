import 'package:demo_app/BLoC_CountDownTimer/bloc/TimeBlocObserver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BLoC_CountDownTimer/page/TimePage.dart';

void main() {
  Bloc.observer = TimeBlocObserver();

  runApp(
    const MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      // ),
      // title: 'This is demo Flutter',
      home: TimePage(),
    ),
  );
}
