import 'package:expense_master/features/onbording/data/local_data_source.dart/keep_user_sign_in.dart';
import 'package:expense_master/features/onbording/data/repository/google_signin_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'google_sign_in_state.dart';
part 'google_sign_in_cubit.freezed.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  final GoogleSignInRepoImpl _signInRepoImpl;
  final KeepUserSignInImpl _keepUserSignInImpl;

  GoogleSignInCubit(this._signInRepoImpl, this._keepUserSignInImpl)
      : super(const GoogleSignInState.initial());

  Future<void> emitSignInStates() async {
    emit(const GoogleSignInState.signInLoading());

    final response = await _signInRepoImpl.signInWithGoogle();

    response.fold(
        (error) => emit(GoogleSignInState.signInFailure(error: error.message)),
        (userCredential) async {
      final useId = userCredential?.additionalUserInfo?.profile?["id"];
      //this method to add idUser in local storage by Hive
      await _keepUserSignInImpl.addUserId(userId: useId ?? "");

      return emit(GoogleSignInState.signInSuccess(userCredential));
    });
  }

  // this method to return userId to use this in file routing to show
  // onbording view or home view
  String getUserId() {
    return _keepUserSignInImpl.getUserId();
  }
}
