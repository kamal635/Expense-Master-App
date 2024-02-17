import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_master/core/error/firebase_error.dart';
import 'package:expense_master/features/auth/data/models/user_model.dart';

abstract class CreateUserRepo {
  Future<Either<ErrorHandle, Unit>> createUser({required UserModel userModel});
}

class CreateUserRepoImpl implements CreateUserRepo {
  final FirebaseFirestore _firestore;

  CreateUserRepoImpl({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<Either<ErrorHandle, Unit>> createUser(
      {required UserModel userModel}) async {
    try {
      await _firestore
          .collection("users")
          .doc(userModel.userId)
          .set(userModel.toFirestore());
      return right(unit);
    } catch (e) {
      return methodHandleErrorExceptions(e);
    }
  }
}
