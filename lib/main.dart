import 'package:demo_app/CallApi/blocs/BLocObserver/bloc_observer_events.dart';
import 'package:demo_app/FireBase/components/pages/forget_pass_page.dart';
import 'package:demo_app/FireBase/main_firebase.dart';
import 'package:demo_app/Provider/counter_main.dart';
import 'package:demo_app/dependence_injection/1_using_contructor/main_di_01.dart';
import 'package:demo_app/dependence_injection/2_using_inherit_widget/main_di_02.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'FireBase/components/pages/check_email.dart';
import 'dependence_injection/3_using_getIt/main_di_03.dart';
// change name repo git
import 'dependence_injection/3_using_getIt/injection_appInfo.dart' as di;

Future<void> main() async {
  Bloc.observer = BlocObserverEvents();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  di.setupProj();


  runApp(
     const MaterialApp(
       debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.green,
      // ),
      // title: 'This is demo Flutter',
      home: MainDi03()
    ),
  );
}

