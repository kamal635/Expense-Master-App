import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthListenRepo {
  // listen to user changes
  Stream<User?> authStateChanges();
}

class AuthListenRepoImpl implements AuthListenRepo {
  final FirebaseAuth _firebaseAuth;

  AuthListenRepoImpl({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  // 1-
  @override
  Stream<User?> authStateChanges() {
    return _firebaseAuth.authStateChanges();
  }
}
