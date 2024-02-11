import 'package:firebase_auth/firebase_auth.dart';

class ErrorHandle {
  final String? message;

  ErrorHandle({required this.message});
}

class HandleErrorFirebaseAuthException extends ErrorHandle {
  HandleErrorFirebaseAuthException({required super.message});

  factory HandleErrorFirebaseAuthException.fromFirebase(
      FirebaseAuthException e) {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        return HandleErrorFirebaseAuthException(
            message:
                'account exists with different credential, Please try again later..');

      case 'invalid-credential':
        return HandleErrorFirebaseAuthException(
            message: 'invalid credential, Please try again later..');

      case 'operation-not-allowed':
        return HandleErrorFirebaseAuthException(
            message: 'operation not allowed, Please try again later..');

      case 'network-request-failed':
        return HandleErrorFirebaseAuthException(
            message: 'network request failed, Please try again later..');

      case 'sign_in_failed':
        return HandleErrorFirebaseAuthException(
            message: "sign in failed, Please try again later..");

      case 'network_error':
        return HandleErrorFirebaseAuthException(
            message: 'network error, Please try again later..');

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
