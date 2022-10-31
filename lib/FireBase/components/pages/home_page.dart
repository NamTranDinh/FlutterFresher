import 'package:demo_app/FireBase/components/pages/signin_page.dart';
import 'package:demo_app/FireBase/repositories/user_repos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userRepo = UserRepos(firebaseAuth: FirebaseAuth.instance);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Home'),
        leading: const Icon(Icons.home),
        actions: [
          IconButton(
            onPressed: () {
              const CircularProgressIndicator();
              userRepo.signOut();
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage(),));
            },
            icon: const Icon(Icons.logout, color: Colors.white),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/loading/congratulations.json', width: 200, height: 200, fit: BoxFit.fill),
            const Text('Welcome', style: TextStyle(color: Colors.green, fontSize: 36),),
          ] ,
        ),
      ),
    );
  }
}
