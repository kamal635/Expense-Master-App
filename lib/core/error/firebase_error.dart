import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class ErrorHandle {
  final String? message;
  ErrorHandle({required this.message});
}

// Class Handle Error from Firebase Auth Exception
class HandleErrorFirebaseAuthException extends ErrorHandle {
  HandleErrorFirebaseAuthException({required super.message});

  factory HandleErrorFirebaseAuthException.fromFirebase(
      FirebaseAuthException e) {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        return HandleErrorFirebaseAuthException(
            message:
                'Account exists with different credential, Please try again later..');

      case 'invalid-credential':
        return HandleErrorFirebaseAuthException(
            message: 'Invalid credential, Please try again later..');

      case 'operation-not-allowed':
        return HandleErrorFirebaseAuthException(
            message: 'Operation not allowed, Please try again later..');

      case 'network-request-failed':
        return HandleErrorFirebaseAuthException(
            message: 'Network request failed, Please try again later..');

      case 'sign_in_failed':
        return HandleErrorFirebaseAuthException(
            message: "Sign in failed, Please try again later..");

      case 'network_error':
        return HandleErrorFirebaseAuthException(
            message: 'Network error, Please try again later..');

      case 'unknown':
        return HandleErrorFirebaseAuthException(
            message:
                'An internal error has occurred, Please try again later..');

      default:
        return HandleErrorFirebaseAuthException(
            message: 'Unknown error, Please try again later..');
    }
  }
}

// Class Handle Error from Platform Exception
class HandlePlatformException extends ErrorHandle {
  HandlePlatformException({required super.message});

  factory HandlePlatformException.fromPlatformExeption(PlatformException e) {
    switch (e.code) {
      case 'network_error':
        return HandlePlatformException(
            message: 'Network error, Please try again later..');

      default:
        return HandlePlatformException(
            message: 'Unknown error, Please try again later..');
    }
  }
}
