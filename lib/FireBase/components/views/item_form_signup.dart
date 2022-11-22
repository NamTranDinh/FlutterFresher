import 'package:demo_app/FireBase/components/pages/signin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../repositories/user_repos.dart';
import '../../validator/validators.dart';

class ItemFormRegister extends StatefulWidget {
  const ItemFormRegister({Key? key}) : super(key: key);

  @override
  State<ItemFormRegister> createState() => _ItemFormRegisterState();
}

class _ItemFormRegisterState extends State<ItemFormRegister> {
  String errorMsg = '';
  var obscureText = true;
  final _keyForm = GlobalKey<FormState>();
  final userRepo = UserRepos(firebaseAuth: FirebaseAuth.instance);
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Padding(
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
              child: TextFormField(
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !Validators.isEmailValid(value)) {
                    return 'Email invalid';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                controller: _usernameController,
                decoration: const InputDecoration(
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
              child: TextFormField(
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !Validators.isPasswordValid(value)) {
                    return 'Password must like User1234';
                  }
                  return null;
                },
                obscureText: obscureText,
                controller: _passwordController,
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
                  prefixIcon:
                      const Icon(Icons.lock, color: Colors.green, size: 24),
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
              child: TextFormField(
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value != _passwordController.text) {
                    return 'Re-enter the password does not match!';
                  }
                  return null;
                },
                obscureText: obscureText,
                controller: _rePasswordController,
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
                  prefixIcon:
                      const Icon(Icons.lock, color: Colors.green, size: 24),
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
                  onPressed: () async {
                    if (_keyForm.currentState!.validate()) {
                      try {
                        await userRepo.firebaseAuth
                            .createUserWithEmailAndPassword(
                                email: _usernameController.text,
                                password: _passwordController.text);
                      } on FirebaseAuthException catch (e) {
                        e.message;
                        if (e.code == 'email-already-in-use') {
                          errorMsg = 'The account already exists for that email.';
                        }
                      }
                      if (errorMsg != '') {
                        _showMyDialogError();
                      } else {
                        Navigator.push(this.context, MaterialPageRoute(builder: (context) => const SignInPage(),));
                      }
                    }
                  },
                  child: const Text('Register')),
            ),

            /// divider
            // Row(children: [
            //   Expanded(
            //     child: Container(
            //         margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            //         child: const Divider(
            //           color: Colors.black,
            //           height: 36,
            //         )),
            //   ),
            //   const Text("OR"),
            //   Expanded(
            //     child: Container(
            //         margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            //         child: const Divider(
            //           color: Colors.black,
            //           height: 36,
            //         )),
            //   ),
            // ]),
          ],
        ),
      ),
    );
  }

  bool checkRePassword(String pass, String rePass) {
    if (pass == rePass) {
      return true;
    }
    return false;
  }

  Future<void> _showMyDialogError() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text(
          'Error',
          style: TextStyle(color: Colors.red),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: LottieBuilder.asset(
                  'assets/loading/error.json',
                  width: 100,
                  height: 100,
                  repeat: true,
                ),
              ),
              const Text('The account already exists for that email!\n Pls try an other email!', textAlign: TextAlign.center),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
