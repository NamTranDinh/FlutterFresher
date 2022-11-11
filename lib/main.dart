import 'package:demo_app/CallApi/blocs/BLocObserver/bloc_observer_events.dart';
import 'package:demo_app/FireBase/components/pages/forget_pass_page.dart';
import 'package:demo_app/FireBase/main_firebase.dart';
import 'package:demo_app/Provider/counter_main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'FireBase/components/pages/check_email.dart';
// change name repo git
Future<void> main() async {
  Bloc.observer = BlocObserverEvents();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();


  runApp(
     const MaterialApp(
       debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      // ),
      // title: 'This is demo Flutter',
      home: CounterMain()
    ),
  );
}

