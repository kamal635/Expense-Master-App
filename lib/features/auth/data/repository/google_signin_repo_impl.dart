import 'package:expense_master/core/error/firebase_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import "package:dartz/dartz.dart";

// All method in Google sign in repo
abstract class GoogleSignInRepo {
  Future<Either<ErrorHandle, UserCredential?>> signInWithGoogle();
  Stream<User?> authStateChanges();
}

// Implements All method in Google sign in repo
class GoogleSignInRepoImpl implements GoogleSignInRepo {
  final FirebaseAuth _firebaseAuth;

  GoogleSignInRepoImpl({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;
  @override
  Future<Either<ErrorHandle, UserCredential?>> signInWithGoogle() async {
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
      return right(await _firebaseAuth.signInWithCredential(credential));
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(HandleErrorFirebaseAuthException.fromFirebase(e));
      }
      if (e is PlatformException) {
        return left(HandlePlatformException.fromPlatformExeption(e));
      }

      return left(ErrorHandle(message: e.toString()));
    }
  }

  @override
  Stream<User?> authStateChanges() {
    return _firebaseAuth.authStateChanges();
  }
}
