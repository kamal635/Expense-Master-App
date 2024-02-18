abstract class MessageError {
  static const String differentCredential =
      "This email is associated with a different sign-in method. Please try signing in using a different method.";

  static const String userNotFound =
      "We couldn't find an account with this email. Please check your email or sign up if you haven't already.";

  static const String invalidCredential =
      "The provided credentials are invalid. Please double-check your email and password.";

  static const String operationNotAllowed =
      "This operation is not allowed. Please contact support for assistance.";

  static const String networkRequestFailed =
      "We're having trouble connecting to our servers. Please check your internet connection and try again.";

  static const String signInFailed =
      "Sign-in failed. Please try again later or contact support if the issue persists.";

  static const String networkError =
      "A network error occurred. Please check your internet connection and try again.";

  static const String unknown =
      "An unknown error occurred. Please try again later or contact support for assistance.";

  static const String defaultError =
      "An unknown error occurred. Please try again later or contact support for assistance.";

  static const String cancelled =
      "The operation was cancelled, typically due to a network error.";

  static const String invalidArgument =
      "The operation was rejected because one or more arguments are invalid.";

  static const String deadlineExceeded =
      "The deadline for the operation expired before the operation could be completed.";

  static const String notFound =
      "The requested document or resource was not found.";

  static const String alreadyExists =
      "The document or resource already exists and cannot be created again.";

  static const String permissionDenied =
      "The caller does not have permission to perform the operation. Please Try again Sign in..";

  static const String unauthenticated =
      "The request does not have valid authentication credentials.";
}
