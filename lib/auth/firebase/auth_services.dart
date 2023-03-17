import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);
      Logger().i(userCredential.user!.uid);
      return userCredential;
    } catch (error) {
      Logger().e(email, password);
    }
  }

  Future signUpWithEmail(
      {required String email, required String password}) async {
    try {
      final signUp = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Logger().i(signUp.user!.uid);
      return signUp;
    } catch (e) {
      Logger().e(e);
      return null;
    }
  }
}
