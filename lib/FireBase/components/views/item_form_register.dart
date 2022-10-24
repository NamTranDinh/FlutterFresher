import 'package:flutter/material.dart';

class ItemFormRegister extends StatefulWidget {
  const ItemFormRegister({Key? key}) : super(key: key);

  @override
  State<ItemFormRegister> createState() => _ItemFormRegisterState();
}

class _ItemFormRegisterState extends State<ItemFormRegister> {
  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// title
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Register',
              style: TextStyle(
                color: Colors.green,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          /// User name
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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

          /// Re-Password
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
                labelText: 'Re-Password',
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
                child: const Text('Register')),
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
