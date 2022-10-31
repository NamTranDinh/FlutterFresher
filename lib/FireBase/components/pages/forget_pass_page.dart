import 'package:demo_app/FireBase/components/pages/check_email.dart';
import 'package:demo_app/FireBase/components/pages/signin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../repositories/user_repos.dart';
import '../../validator/validators.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final _userController = TextEditingController();
    final _keyform = GlobalKey<FormState>();
    final userRepo = UserRepos(firebaseAuth: FirebaseAuth.instance);
    bool isValidRegex = false;
    String errorMsg ='';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: SizedBox(
                width: 50,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Center(child: Icon(Icons.arrow_back)),
                ),
              ),
            ),

            Positioned(
              top: 150,
              left: 10,
              right: 10,
              bottom: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Reset Password ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BalooDa2'
                    ),
                  ),
                  const Text(
                    'Please enter your email address to request a password reset.\n',
                    style: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'BalooDa2'),
                  ),
                  Form(
                      key: _keyform,
                      child: TextFormField(
                        // initialValue: userRepo.getCurrentUser()?.email,
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
                          prefixIcon:
                              Icon(Icons.person, color: Colors.green, size: 24),
                          labelText: 'Enter email',
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      )),

                  Container(
                    width: 350,
                    height: 50,
                    margin: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () async {
                          if (_keyform.currentState!.validate()) {
                            try {
                              await userRepo.sentMailResetPassword(_userController.text.trim());
                            } on FirebaseException catch (e) {
                              if (e.code == 'user-not-found') {
                                errorMsg = 'Email not available';
                              }
                            }
                            if (errorMsg != '') {
                              _showMyDialogError(errorMsg);
                            } else {
                              Navigator.push(this.context, MaterialPageRoute(builder: (context) => const CheckEmailPage(),));
                            }
                          }
                        },
                        child: const Text(
                          'Sent Email',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),

                  Row(
                    children: [
                      const Text('You remember your password?', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInPage(),));
                        },
                        child: const Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
                      ),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
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
