import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class FirbaseErrorHandle {
  final String? message;

  FirbaseErrorHandle({required this.message});

  factory FirbaseErrorHandle.fromFirebaseError(dynamic error) {
    if (error is FirebaseAuthException ||
        error is FirebaseException ||
        error is PlatformException ||
        error is Exception) {
      return FirbaseErrorHandle(message: error.toString());
    } else {
      return FirbaseErrorHandle(message: 'An unknown error occurred');
    }
  }
}
