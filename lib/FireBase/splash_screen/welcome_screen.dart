import 'dart:async';
import 'package:demo_app/FireBase/components/pages/login_page.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _colorFromHex('#30c871'),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _logoScreen(),
            _titleScreen(),
            _subTitleScreen(),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

Container _logoScreen() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: const CircleAvatar(
      radius: 40,
      backgroundImage: AssetImage('assets/icon/icon.png'),
    ),
  );
}

Text _titleScreen() {
  return const Text(
    'Food Shop',
    style: TextStyle(
        fontFamily: 'Pacifico_Regular',
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: Colors.white),
  );
}

Text _subTitleScreen() {
  return const Text(
    'For the better life!',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontFamily: 'BalooDa2',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white),
  );
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
