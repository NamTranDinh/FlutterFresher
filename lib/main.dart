import 'package:demo_app/CallApi/blocs/BLocObserver/bloc_observer_events.dart';
import 'package:demo_app/FireBase/main_firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CallApi/api_main.dart';
import 'FoodApp/mainApp.dart';

Future<void> main() async {
  Bloc.observer = BlocObserverEvents();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(
     const MaterialApp(
       debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      // ),
      // title: 'This is demo Flutter',
      home: mainAppCategories()
    ),
  );
}

