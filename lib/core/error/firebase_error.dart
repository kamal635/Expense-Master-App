import 'package:dartz/dartz.dart';
import 'package:expense_master/core/error/case_error.dart';
import 'package:expense_master/core/error/message_error.dart';
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
      case CaseError.differentCredential:
        return HandleErrorFirebaseAuthException(
          message: MessageError.differentCredential,
        );

      case CaseError.userNotFound:
        return HandleErrorFirebaseAuthException(
          message: MessageError.userNotFound,
        );

      case CaseError.invalidCredential:
        return HandleErrorFirebaseAuthException(
          message: MessageError.invalidCredential,
        );

      case CaseError.operationNotAllowed:
        return HandleErrorFirebaseAuthException(
          message: MessageError.operationNotAllowed,
        );

      case CaseError.networkRequestFailed:
        return HandleErrorFirebaseAuthException(
          message: MessageError.networkRequestFailed,
        );

      case CaseError.signInFailed:
        return HandleErrorFirebaseAuthException(
          message: MessageError.signInFailed,
        );

      case CaseError.networkError:
        return HandleErrorFirebaseAuthException(
          message: MessageError.networkError,
        );

      case CaseError.unknown:
        return HandleErrorFirebaseAuthException(
          message: MessageError.unknown,
        );

      default:
        return HandleErrorFirebaseAuthException(
          message: MessageError.defaultError,
        );
    }
  }
}

// Class Handle Error from Platform Exception
class HandlePlatformException extends ErrorHandle {
  HandlePlatformException({required super.message});

  factory HandlePlatformException.fromPlatformExeption(PlatformException e) {
    switch (e.code) {
      case CaseError.networkError:
        return HandlePlatformException(
          message: MessageError.networkError,
        );

      default:
        return HandlePlatformException(
          message: MessageError.defaultError,
        );
    }
  }
}

// this method to add all type exceptions
Either<ErrorHandle, T> methodHandleErrorExceptions<T>(Object e) {
  if (e is FirebaseAuthException) {
    return left(HandleErrorFirebaseAuthException.fromFirebase(e));
  }
  if (e is PlatformException) {
    return left(HandlePlatformException.fromPlatformExeption(e));
  } else {
    return left(ErrorHandle(message: e.toString()));
  }
}
