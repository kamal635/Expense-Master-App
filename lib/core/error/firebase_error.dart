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

// Class Handle Error from Firebase Exception
class HandleErroFirebaseException extends ErrorHandle {
  HandleErroFirebaseException({required super.message});
  factory HandleErroFirebaseException.fromFriebase(FirebaseException e) {
    switch (e.code) {
      case CaseError.cancelled:
        return HandleErroFirebaseException(
          message: MessageError.cancelled,
        );
      case CaseError.unknown:
        return HandleErroFirebaseException(
          message: MessageError.unknown,
        );

      case CaseError.invalidArgument:
        return HandleErroFirebaseException(
          message: MessageError.invalidArgument,
        );
      case CaseError.deadlineExceeded:
        return HandleErroFirebaseException(
          message: MessageError.deadlineExceeded,
        );
      case CaseError.notFound:
        return HandleErroFirebaseException(
          message: MessageError.notFound,
        );

      case CaseError.alreadyExists:
        return HandleErroFirebaseException(
          message: MessageError.alreadyExists,
        );
      case CaseError.permissionDenied:
        return HandleErroFirebaseException(
          message: MessageError.permissionDenied,
        );
      case CaseError.unauthenticated:
        return HandleErroFirebaseException(
          message: MessageError.unauthenticated,
        );
      default:
        return HandleErroFirebaseException(
          message: MessageError.defaultError,
        );
    }
  }
}

// Class Handle Error from Platform Exception
class HandleErrorPlatformException extends ErrorHandle {
  HandleErrorPlatformException({required super.message});

  factory HandleErrorPlatformException.fromPlatformExeption(
      PlatformException e) {
    switch (e.code) {
      case CaseError.networkError:
        return HandleErrorPlatformException(
          message: MessageError.networkError,
        );

      default:
        return HandleErrorPlatformException(
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
    return left(HandleErrorPlatformException.fromPlatformExeption(e));
  }
  if (e is FirebaseException) {
    return left(HandleErroFirebaseException.fromFriebase(e));
  } else {
    return left(ErrorHandle(message: e.toString()));
  }
}
