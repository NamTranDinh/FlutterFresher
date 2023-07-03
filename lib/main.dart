import 'package:demo_app/CallApi/blocs/BLocObserver/bloc_observer_events.dart';
import 'package:demo_app/FireBase/components/pages/forget_pass_page.dart';
import 'package:demo_app/FireBase/main_firebase.dart';
import 'package:demo_app/Provider/counter_main.dart';
import 'package:demo_app/dependence_injection/1_using_contructor/main_di_01.dart';
import 'package:demo_app/dependence_injection/2_using_inherit_widget/main_di_02.dart';
import 'package:demo_app/flavor_config/main_flavor.dart';
import 'package:demo_app/get/main_get.dart';
import 'package:demo_app/get/routes_manager/routes.dart';
import 'package:demo_app/get/routes_manager/routes_impl.dart';
import 'package:demo_app/isolate/main_isolate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'FireBase/components/pages/check_email.dart';
import 'dependence_injection/3_using_getIt/main_di_03.dart';

// change name repo git
import 'dependence_injection/3_using_getIt/injection_appInfo.dart' as di;

void main() {
  Bloc.observer = BlocObserverEvents();
  WidgetsFlutterBinding.ensureInitialized();
  const String flavor = String.fromEnvironment('FLAVOR_CONFIGURATION');
  final config = getConfigForFlavor(flavor);
  runApp(MaterialApp(home: MainFlavor(config)));

  // await Firebase.initializeApp();
  // di.setupProj();
  // Get.put<Routes>(RoutesImpl(), permanent: true);
}
