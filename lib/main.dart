import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BLoC_Counter/bloc_observer/BlocObserver.dart';
import 'BLoC_Counter/page/CountPage.dart';

void main() {
  Bloc.observer = CountObserver();

  runApp(
    const MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      // ),
      // title: 'This is demo Flutter',
      home: CountPage(),
    ),
  );
}
