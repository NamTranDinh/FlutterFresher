import 'package:demo_app/FireBase/splash_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'components/pages/signin_page.dart';

class MainFireBase extends StatelessWidget {
  const MainFireBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
