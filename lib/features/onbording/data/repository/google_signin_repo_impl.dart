import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

// All method in Google sign in repo
abstract class GoogleSignInRepo {
  Future<UserCredential?> signInWithGoogle();
}

// Implements All method in Google sign in repo
class GoogleSignInRepoImpl implements GoogleSignInRepo {
  @override
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print("@@FirebaseAuthException: $e");
      }
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("@@FirebaseException: $e");
      }
    }
    return null;
  }
}
