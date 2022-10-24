import 'package:flutter/material.dart';

import '../pages/register_page.dart';

class ItemFormLogin extends StatefulWidget {
  const ItemFormLogin({Key? key}) : super(key: key);

  @override
  State<ItemFormLogin> createState() => _ItemFormLoginState();
}

class _ItemFormLoginState extends State<ItemFormLogin> {
  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// title
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'Log In',
              style: TextStyle(
                color: Colors.green,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
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

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
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
}
