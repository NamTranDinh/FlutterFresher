import 'package:demo_app/FireBase/components/views/item_form_signin.dart';
import 'package:demo_app/FireBase/components/views/item_social.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            _componentTopLeft(),
            _componentBottomRight(),
            _componentImage(),
            _logoApp(),
            const ItemFormLogin(),
            const ItemSocial(),
          ],
        ),
      ),
    );
  }
}

Positioned _componentImage() {
  return Positioned(
      top: 0,
      right: -20,
      child: Container(
        height: 300,
        width: 300,
        child: Image.asset('assets/login/festivities.png'),
      ));
}

Positioned _componentTopLeft() {
  return Positioned(
    top: -200,
    left: -100,
    child: Container(
      width: 400,
      height: 400,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(1000)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green,
              Colors.lightGreen,
            ],
          )),
    ),
  );
}

Positioned _componentBottomRight() {
  return Positioned(
    bottom: -400,
    right: -300,
    child: Container(
      width: 500,
      height: 500,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(1000)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green,
              Colors.lightGreen,
            ],
          )),
    ),
  );
}

Positioned _logoApp() {
  return Positioned(
    top: 60,
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/icon/icon.png'),
          ),
        ),
        const Text(
          'Food App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
}
