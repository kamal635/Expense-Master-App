import 'package:expense_master/features/auth/data/models/user_model.dart';
import 'package:expense_master/features/auth/data/repository/create_user_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_state.dart';
part 'create_user_cubit.freezed.dart';

class CreateUserCubit extends Cubit<CreateUserState> {
  final CreateUserRepoImpl _createUserRepoImpl;
  final FirebaseAuth _firebaseAuth;

  CreateUserCubit(this._createUserRepoImpl, {FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        super(const CreateUserState.initial());

  Future<void> emitCreateUserStates() async {
    emit(const CreateUserState.createUserLoading());

    final user = _firebaseAuth.currentUser;

    UserModel userModel = UserModel(
      userId: user?.uid,
      name: user?.displayName,
      userImage: user?.photoURL,
      email: user?.email,
      date: DateTime.now(),
    );

    final response = await _createUserRepoImpl.createUser(
      userModel: userModel,
    );
    response.fold(
        (error) =>
            emit(CreateUserState.createUserFailure(error: error.message)),
        (_) => emit(const CreateUserState.createUserSuccess()));
  }
}
