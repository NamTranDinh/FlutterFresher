import 'package:demo_app/FireBase/components/pages/forget_pass_page.dart';
import 'package:demo_app/FireBase/components/pages/home_page.dart';
import 'package:demo_app/FireBase/repositories/user_repos.dart';
import 'package:demo_app/FireBase/validator/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../FoodApp/mainApp.dart';
import '../pages/signup_page.dart';

class ItemFormLogin extends StatefulWidget {
  const ItemFormLogin({Key? key}) : super(key: key);

  @override
  State<ItemFormLogin> createState() => _ItemFormLoginState();
}

class _ItemFormLoginState extends State<ItemFormLogin> {
  var obscureText = true;
  bool isValidRegex = false;
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String errorMsg = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final userRepo = UserRepos(firebaseAuth: FirebaseAuth.instance);
    UserCredential user;
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Form(
        key: formKey,
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
              child: TextFormField(
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !Validators.isEmailValid(value)) {
                    return 'Email invalid!';
                  }

                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                controller: _userController,
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
                    return 'Password must be  at least 8 characters, include an uppercase letter and number';
                  }
                  return null;
                },
                controller: _passwordController,
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
                    if (formKey.currentState!.validate()) {
                      try {
                        await userRepo.firebaseAuth.signInWithEmailAndPassword(
                            email: _userController.text,
                            password: _passwordController.text);
                      } on FirebaseException catch (e) {
                        if (e.code == 'wrong-password') {
                          errorMsg = 'Password not correct!';
                        } else if (e.code == 'user-not-found') {
                          errorMsg = 'Email not available';
                        }
                      }
                      if (errorMsg != '') {
                        _showMyDialogError(errorMsg);
                      } else {
                        Navigator.push(this.context, MaterialPageRoute(builder: (context) => const mainAppCategories(),));
                      }
                    }
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        )),
                    child: const Text(
                      'Register |',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPasswordPage(),)),
                    child: const Text(
                      ' Forget Password',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
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

  bool checkRegexEmail(String value) {
    if (value.isNotEmpty || Validators.isEmailValid(value)) {
      return true;
    }
    return false;
  }

  bool checkRegexPassword(String value) {
    if (value.isNotEmpty || Validators.isPasswordValid(value)) {
      return true;
    }
    return false;
  }

  Future<void> _showMyDialogError(String mess) async {
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
              Text('$mess!\n Pls try again!', textAlign: TextAlign.center),
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
