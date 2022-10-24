import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/windows/windows_icon_generator.dart';
import '../views/item_form_register.dart';
import '../views/item_social.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
            _iconNavigator(context),
            _componentBottomRight(),
            _componentImage(),
            const ItemFormRegister(),
            const ItemSocial(),
          ],
        ),
      ),
    );
  }
}

Widget _iconNavigator(BuildContext context) {
  return Positioned(
      top: 60,
      left: 36,
      child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )));
}

Widget _componentImage() {
  return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 360,
        width: 260,
        child: Image.asset('assets/register/welcome_cats.png'),
      ));
}

Positioned _componentTopLeft() {
  return Positioned(
    top: 0,
    left: 0,
    child: Container(
      width: 300,
      height: 120,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
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
    bottom: 0,
    right: 0,
    child: Container(
      width: 250,
      height: 100,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(1000)),
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
