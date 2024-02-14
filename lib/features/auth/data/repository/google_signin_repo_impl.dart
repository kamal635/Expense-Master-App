import 'package:expense_master/core/error/firebase_error.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import "package:dartz/dartz.dart";

abstract class GoogleSignInRepo {
  // sign in with google sign in
  Future<Either<ErrorHandle, UserCredential?>> signInWithGoogle();
  // listen to user changes
  Stream<User?> authStateChanges();
  // reload current user to get any changes made
  Future<Either<ErrorHandle, Unit>> reloadCurrentUser();
  // get userID
  String? get userID;
}

// Implements All method in Google sign in repo
class GoogleSignInRepoImpl implements GoogleSignInRepo {
  final FirebaseAuth _firebaseAuth;

  GoogleSignInRepoImpl({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  // 1-
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
      return methodHandleErrorExceptions(e);
    }
  }

  // 2-
  @override
  Stream<User?> authStateChanges() {
    return _firebaseAuth.authStateChanges();
  }

  // 3-
  @override
  Future<Either<ErrorHandle, Unit>> reloadCurrentUser() async {
    try {
      await _firebaseAuth.currentUser?.reload();
      return right(unit);
    } catch (e) {
      return methodHandleErrorExceptions(e);
    }
  }

  // 4-
  @override
  String? get userID => _firebaseAuth.currentUser?.uid;
}
