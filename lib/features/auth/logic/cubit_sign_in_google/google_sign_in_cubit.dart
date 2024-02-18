import 'dart:async';

import 'package:expense_master/features/auth/data/repository/google_signin_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'google_sign_in_state.dart';
part 'google_sign_in_cubit.freezed.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  final GoogleSignInRepoImpl _signInRepoImpl;

  GoogleSignInCubit(this._signInRepoImpl)
      : super(const GoogleSignInState.initial());

  // Method sign in with Google
  Future<void> emitSignInStates() async {
    emit(const GoogleSignInState.signInLoading());

    final response = await _signInRepoImpl.signInWithGoogle();

    response.fold(
        (error) => emit(GoogleSignInState.signInFailure(error: error.message)),
        (userCredential) async {
      return emit(GoogleSignInState.signInSuccess(userCredential));
    });
  }

  // Method Reload Current User
  Future<void> reloadCurrentUser() async {
    final response = await _signInRepoImpl.reloadCurrentUser();

    response.fold(
        (error) => emit(GoogleSignInState.signInFailure(error: error.message)),
        (_) {
      return null;
    });
  }
}
