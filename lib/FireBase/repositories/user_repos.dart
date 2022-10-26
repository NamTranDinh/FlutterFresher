import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepos {
  final FirebaseAuth firebaseAuth;
  // final GoogleSignIn googleSignIn;

  UserRepos({required this.firebaseAuth});

  Future<UserCredential> signInWithEmailAndPassword(String email,
      String password) async {
    return await firebaseAuth.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());
  }

  Future<UserCredential> createUserWithEmailAndPassword(String email,
      String password) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
        email: email.trim(), password: password.trim());
  }

  Future<List<void>> signOut() async {
    return Future.wait([
      firebaseAuth.signOut(),
      // googleSignIn.signOut()
    ]);
  }

  Future<User> isSignedIn() async {
    return firebaseAuth.currentUser!;
  }

  bool? getUserCurrentSigned() {
    return firebaseAuth.currentUser?.emailVerified;
  }

}
