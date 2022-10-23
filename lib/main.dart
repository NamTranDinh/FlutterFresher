import 'package:demo_app/CallApi/blocs/BLocObserver/bloc_observer_events.dart';
import 'package:demo_app/FireBase/main_firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CallApi/api_main.dart';

void main(){
  Bloc.observer = BlocObserverEvents();

  runApp(
     const MaterialApp(
       debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      // ),
      // title: 'This is demo Flutter',
      home: MainFireBase()
    ),
  );
}

