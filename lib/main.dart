import 'package:demo_app/CallApi/blocs/BLocObserver/bloc_observer_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CallApi/main/api_main.dart';

void main(){

  Bloc.observer = BlocObserverEvents();

  runApp(
     const MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      // ),
      // title: 'This is demo Flutter',
      home: ApiMain()
    ),
  );
}

