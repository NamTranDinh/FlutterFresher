import 'package:firebase_auth/firebase_auth.dart';

import 'handle_exception.dart';

class UserRepos {
  final FirebaseAuth firebaseAuth;

  UserRepos({required this.firebaseAuth});

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    return await firebaseAuth.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());
  }

  Future<String> createUserWithEmailAndPassword({required String email, required String password})
  async {
    String errorMess = '';
    try {
      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        errorMess = 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
    }
    return errorMess;
  }

  Future<void> sentMailResetPassword(String email) async {
    return await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> signOut() async {
    User? user = FirebaseAuth.instance.currentUser;
    print('$user');
    return await firebaseAuth.signOut();
  }

  User? getCurrentUser() {
    if (firebaseAuth.currentUser != null) {
      print(firebaseAuth.currentUser?.uid);
    }
    return firebaseAuth.currentUser;
  }

  // Future<AuthStatus> resetPassword({required String email}) async {
  //   await firebaseAuth
  //       .sendPasswordResetEmail(email: email)
  //       .then((value) => _status = AuthStatus.successful)
  //       .catchError((e) => _status = AuthExceptionHandler.handleAuthException(e));
  //   return _status;
  // }
}
