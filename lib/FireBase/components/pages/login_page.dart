import 'package:demo_app/FireBase/components/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            _formLogIn(context),
            _socialButton(),
          ],
        ),
      ),
    );
  }
}

Widget _socialButton() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: SizedBox(
      width: 200,
      height: 170,
      // color: Colors.green,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () => null,
            child: CircleAvatar(
              radius: 16,
              child: Image.asset('assets/login/img_facebook.png'),
            ),
          ),
          InkWell(
            onTap: () => null,
            child: CircleAvatar(
              radius: 16,
              child: Image.asset('assets/login/img_facebook.png'),
            ),
          ),
          InkWell(
            onTap: () => null,
            child: CircleAvatar(
              radius: 16,
              child: Image.asset('assets/login/img_facebook.png'),
            ),
          ),
        ],
      ),
    ),
  );
}

Padding _formLogIn(BuildContext context) {
  var obscureText = true;
  return Padding(
    padding: const EdgeInsets.only(top: 50),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// title
        const Text(
          'Log In',
          style: TextStyle(
            color: Colors.green,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),

        /// User name
        Container(
          margin: const EdgeInsets.all(20),
          child: const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.person, color: Colors.green, size: 24),
              labelText: 'User Name',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),

        /// Password
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              suffixIcon: GestureDetector(
                onTap: () {
                  obscureText = !obscureText;
                },
                child: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
              ),
              prefixIcon: const Icon(Icons.lock, color: Colors.green, size: 24),
              labelText: 'Password',
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),

        /// Button
        Container(
          width: 200,
          height: 46,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () => null,
              child: const Text('Log in')),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage(),)),
              child: const Text('Register |', style: TextStyle(color: Colors.blue),),
            ),
            InkWell(
              onTap: () => null,
              child: const Text(' Forget Password', style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),

        /// divider
        Row(children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: const Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
          const Text("OR"),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: const Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
        ]),
      ],
    ),
  );
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
