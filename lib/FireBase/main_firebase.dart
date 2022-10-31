import 'package:demo_app/FireBase/splash_screen/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MainFireBase extends StatelessWidget {
  const MainFireBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initFirebase(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
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
        return const Center(child: CircularProgressIndicator(),);
      },
    );
  }

  Future<FirebaseApp> initFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
}
