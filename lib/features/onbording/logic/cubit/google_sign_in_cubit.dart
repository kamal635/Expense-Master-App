import 'package:expense_master/features/onbording/data/repository/google_signin_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_sign_in_state.dart';
part 'google_sign_in_cubit.freezed.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  final GoogleSignInRepoImpl _signInRepoImpl;
  GoogleSignInCubit(this._signInRepoImpl)
      : super(const GoogleSignInState.initial());

  Future<void> emitSignInStates() async {
    emit(const GoogleSignInState.signInLoading());
    final response = await _signInRepoImpl.signInWithGoogle();
    response.fold(
        (l) => emit(GoogleSignInState.signInFailure(error: l.message)),
        (userCredential) =>
            emit(GoogleSignInState.signInSuccess(userCredential)));
  }
}
